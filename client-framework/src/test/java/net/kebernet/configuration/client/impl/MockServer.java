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
