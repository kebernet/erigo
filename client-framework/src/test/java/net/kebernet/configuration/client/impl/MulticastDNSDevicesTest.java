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
        MulticastDNSDevices devices = new MulticastDNSDevices();

        //Listen for initial discovery
        devices.listenForDevices(result -> {
            deviceFuture.set(result.stream().filter(d->
                 d.getName().equals("Unit Test Device")
            ).findFirst().get());
            return true;
        });
        devices.startListening();
        MockServer server = new MockServer();
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
        System.out.println(device);
        server.server.stop();
        devices.stopListening();
    }

}