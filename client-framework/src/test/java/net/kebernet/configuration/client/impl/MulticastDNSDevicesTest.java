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

import com.google.common.util.concurrent.SettableFuture;
import net.kebernet.configuration.client.model.Device;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by rcooper on 7/6/17.
 */
public class MulticastDNSDevicesTest {


    @Test
    public void testDiscovery() throws Exception {
        SettableFuture<Device> deviceFuture = SettableFuture.create();
        MulticastDNSDevices devices = new MulticastDNSDevices(new HttpClient(null, null));

        //Listen for initial discovery
        devices.listenForDevices(result -> {
            deviceFuture.set(result.stream().filter(d->
                 d.getName().equals("Unit Test Device")
            ).findFirst().get());
            return true;
        });
        devices.startListening();
        MockServer server = new MockServer(MockServer.randomPort());
        Device device = deviceFuture.get();
        assertTrue(device != null);
        assertTrue(device.getAddress().startsWith("http://"));


        //Check the stored list.
        SettableFuture<Device> deviceFuture2 = SettableFuture.create();
        devices.listKnownDevices(result -> {
            deviceFuture2.set(result.stream().filter( d -> d.getName().equals("Unit Test Device"))
                    .findFirst().get());
            return false;
        });
        device = deviceFuture.get();
        assertTrue(device != null);
        assertTrue(device.getAddress().startsWith("http://"));
        assertEquals("http://www.kebernet.net/_/rsrc/1264535093579/Home/therespie.jpg", device.getThumbnailUrl());
        server.server.stop();
        devices.stopListening();
    }

}