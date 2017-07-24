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
package net.kebernet.configuration.server;

import com.google.common.base.Objects;
import net.kebernet.configuration.client.impl.MulticastDNSDevices;
import net.kebernet.configuration.server.model.SettingValueRepository;

import javax.inject.Inject;
import javax.inject.Singleton;
import javax.jmdns.JmDNS;
import javax.jmdns.ServiceInfo;
import java.io.IOException;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * The service that handles the Multicast DNS broadcasting.
 * Created by rcooper on 7/6/17.
 */

@SuppressWarnings("WeakerAccess")
@Singleton
public class MulticastDNSService {
    private static final Logger LOGGER = Logger.getLogger(MulticastDNSDevices.class.getCanonicalName());
    private JmDNS jmDNS;
    private final SettingValueRepository valueRepository;
    private InetAddress localAddress;
    private final Timer timer = new Timer();

    @Inject
    public MulticastDNSService(SettingValueRepository valueRepository) {
        this.valueRepository = valueRepository;
    }

    public void stop() {
        this.jmDNS.unregisterAllServices();
    }

    public void start() throws IOException {
        this.localAddress = InetAddress.getLocalHost();
        //If the local inet address changes, restart the whole shebang
        timer.scheduleAtFixedRate(new TimerTask() {
            @Override
            public void run() {
                try {
                    InetAddress address = InetAddress.getLocalHost();
                    if(!Objects.equal(localAddress, address)){
                        stop();
                        start();
                    }
                } catch (IOException e) {
                    LOGGER.log(Level.SEVERE, "Unable to get local host address", e);
                    localAddress = null; // Make sure we retry and restart later.
                }
            }
        }, 0,  TimeUnit.MINUTES.toMillis(1));

        this.jmDNS = JmDNS.create(localAddress);
        HashMap<String, String> props = new HashMap<>();
        props.put("path", "/device");
        ServiceInfo serviceInfo = ServiceInfo.create(MulticastDNSDevices.MDNS_SERVICE_TYPE,
                valueRepository.getDeviceName(), Values.HTTP_PORT, 1, 1, props );
        this.jmDNS.registerService(serviceInfo);
    }
}
