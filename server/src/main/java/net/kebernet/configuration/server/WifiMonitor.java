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

import net.kebernet.configuration.server.model.SettingValueRepository;
import net.kebernet.configuration.server.system.SystemInspector;

import javax.inject.Inject;
import javax.inject.Singleton;
import java.time.Clock;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by rcooper on 6/13/17.
 */
@Singleton
public class WifiMonitor extends TimerTask {

    private static final Logger LOGGER = Logger.getLogger(WifiMonitor.class.getCanonicalName());
    private static final long DOWN_TIME_BEFORE_ADHOC = TimeUnit.MINUTES.toMillis(10);
    private Timer timer;
    private final Clock clock;
    private final SystemInspector inspector;
    private long firstTimeDown = Long.MAX_VALUE;
    private final WifiConfigWriter writer;
    private final SettingValueRepository valueRepository;

    @Inject
    public WifiMonitor(WifiConfigWriter writer, Clock clock, SystemInspector inspector, SettingValueRepository valueRepository) {
        this.writer = writer;
        this.valueRepository = valueRepository;
        this.clock = clock;
        this.inspector = inspector;
    }

    public void stop(){
        LOGGER.info("Wifi Monitor Stopping.");
        timer.cancel();
        timer = null;
    }

    public void start(){
        if(timer != null){
            throw new IllegalStateException("Already running.");
        }
        LOGGER.info("Wifi Monitor Starting...");
        this.timer = new Timer();
        timer.scheduleAtFixedRate(this, 5000, 5000);
    }

    @Override
    public void run() {
        try {
            boolean wifiActive = inspector.isWifiActive();
            boolean adhocActive = inspector.isAdHocMode();
            boolean desiredNetworkVisible = inspector.isDesiredNetworkVisible();
            LOGGER.fine("Wifi State active:"+wifiActive+" adhoc:"+adhocActive+" desiredNetworkVisible:"+desiredNetworkVisible);
            // If the wifi isn't active.
            if (!wifiActive) {
                // This is the first time I have seen the wifi down. Just mark the time.
                if (firstTimeDown == Long.MAX_VALUE) {
                    firstTimeDown = clock.millis();
                    return;
                }
                // If we aren't in adhoc mode and the wifi has been down too long, switch to adhoc mode.
                if (!adhocActive && clock.millis() - firstTimeDown > DOWN_TIME_BEFORE_ADHOC) {
                    writer.writeAdHocNetworkConfig();
                    return;
                }
            }
            // If we are in adhoc mode, and we can see the desired network, switch to it.
            if(adhocActive && desiredNetworkVisible){
                writer.writeRegularNetworkConfig(valueRepository.getValues());
                return;
            }

            // Once we are no longer in adhoc mode and the wifi is connected, reset the downtime time.
            if(!adhocActive && wifiActive){
                firstTimeDown = Long.MAX_VALUE;
            }
        } catch(Exception e){
            LOGGER.log(Level.SEVERE, "Exception doing Wifi Monitor loop", e);
        }
    }
}
