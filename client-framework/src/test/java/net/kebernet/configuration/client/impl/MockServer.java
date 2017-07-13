/*
 *     Copyright (c) 2017 Robert Cooper
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */
package net.kebernet.configuration.client.impl;

import net.kebernet.configuration.client.util.URIUtil;
import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.HttpConfiguration;
import org.eclipse.jetty.server.HttpConnectionFactory;
import org.eclipse.jetty.server.SecureRequestCustomizer;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.ServerConnector;
import org.eclipse.jetty.server.SslConnectionFactory;
import org.eclipse.jetty.server.handler.HandlerCollection;
import org.eclipse.jetty.server.handler.ResourceHandler;
import org.eclipse.jetty.servlet.ServletHandler;
import org.eclipse.jetty.util.ssl.SslContextFactory;

import javax.jmdns.JmDNS;
import javax.jmdns.ServiceInfo;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.Random;

/**
 * Created by rcooper on 7/6/17.
 */
public class MockServer {

    JmDNS jmDNS;
    Server server;

    public MockServer() throws Exception {
        this(14000);
    }

    public static int randomPort(){
        int port = 13000;
        Random random = new Random();
        port += 2000 * random.nextDouble();
        return port;
    }

    public MockServer(int port) throws Exception {
        jmDNS = JmDNS.create(InetAddress.getLocalHost());
        server = new Server();

        ServerConnector connector = new ServerConnector(server);
        connector.setPort(port);

        HttpConfiguration https = new HttpConfiguration();
        https.addCustomizer(new SecureRequestCustomizer());
        SslContextFactory sslContextFactory = new SslContextFactory();
        sslContextFactory.setKeyStorePath(
                MockServer.class.getResource("/test-keystore.jks").toExternalForm()
        );
        sslContextFactory.setKeyStorePassword("erigotest");
        sslContextFactory.setKeyManagerPassword("erigotest");

        ServerConnector sslConnector = new ServerConnector(server,
                new SslConnectionFactory(sslContextFactory, "http/1.1"),
                new HttpConnectionFactory(https));

        sslConnector.setPort(port+1);

        server.setConnectors(new Connector[] { connector, sslConnector });

        ResourceHandler resourceHandler = new ResourceHandler();
        resourceHandler.setDirectoriesListed(true);
        resourceHandler.setWelcomeFiles(new String[]{ "index.html" });
        resourceHandler.setResourceBase(System.getProperty("test.resources"));
        ServletHandler servletHandler = new ServletHandler();
        servletHandler.addServletWithMapping(HttpBasicAuthServlet.class, "/authenticated");
        servletHandler.addServletWithMapping(RedirectServlet.class, "/helloRedirected");
        servletHandler.addServletWithMapping(PermanentRedirectServlet.class, "/helloRedirectedPermanent");
        HandlerCollection serverHandlers = new HandlerCollection();
        serverHandlers.setHandlers(new Handler[]{ resourceHandler, servletHandler});
        server.setHandler(serverHandlers);

        server.start();

        HashMap<String, String> props = new HashMap<>();
        props.put("path", "/mock-device.json");
        ServiceInfo serviceInfo = ServiceInfo.create(MulticastDNSDevices.MDNS_SERVICE_TYPE,
                "Unit Test Device", port, 1, 1, props );
        jmDNS.registerService(serviceInfo);

    }

    public void stop() throws Exception {
        server.stop();

    }

    public static void main(String... args) throws Exception {
        MockServer s = new MockServer(14000);
        s.server.join();
    }

    public static class HttpBasicAuthServlet extends HttpServlet {

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            if(!("Basic "+(new HttpClient.BasicAuthenticationToken("user", "pass").getValue())).equals(req.getHeader(HttpClient.AUTHENTICATION_HEADER))){
                resp.setStatus(403);
            } else {
                resp.getWriter().print("authenticated");
            }
        }
    }

    public static class RedirectServlet extends  HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            resp.sendRedirect("/hello");
        }
    }

    public static class PermanentRedirectServlet extends  HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            resp.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
            String url = URIUtil.resolveRelativeURI(req.getRequestURL().toString(), "/hello");
            resp.setHeader("Location", url);
        }
    }
}
