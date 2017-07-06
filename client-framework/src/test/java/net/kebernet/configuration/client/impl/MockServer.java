package net.kebernet.configuration.client.impl;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.ResourceHandler;

import javax.jmdns.JmDNS;
import javax.jmdns.ServiceInfo;
import java.net.InetAddress;
import java.util.HashMap;

/**
 * Created by rcooper on 7/6/17.
 */
public class MockServer {

    JmDNS jmDNS;
    Server server;

    public MockServer() throws Exception {
        jmDNS = JmDNS.create(InetAddress.getLocalHost());
        server = new Server(14000);
        ResourceHandler handler = new ResourceHandler();
        handler.setDirectoriesListed(true);
        handler.setWelcomeFiles(new String[]{ "index.html" });
        handler.setResourceBase("src/test/resources");
        server.setHandler(handler);
        server.start();

        HashMap<String, String> props = new HashMap<>();
        props.put("path", "/mock-device.json");
        ServiceInfo serviceInfo = ServiceInfo.create(MulticastDNSDevices.MDNS_SERVICE_TYPE,
                "Unit Test Device", 14000, 1, 1, props );
        jmDNS.registerService(serviceInfo);

    }
}
