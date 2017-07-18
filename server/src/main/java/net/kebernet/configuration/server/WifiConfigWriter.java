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

import net.kebernet.configuration.client.model.SettingValue;

import javax.inject.Inject;
import javax.inject.Singleton;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.List;
import java.util.logging.Level;

/**
 * A special case config writer for dealing with Wifi settings.
 * Created by rcooper on 6/13/17.
 */
@Singleton
public class WifiConfigWriter extends ConfigWriter {

    @Inject
    public WifiConfigWriter(StartupParameters startupParameters) {
        super(new File(startupParameters.getTargetDirectory()), new File(startupParameters.getStorageDirectory()));
        renderContext.put("deviceName", startupParameters.getDeviceType());
        renderContext.put("wlanInterface", startupParameters.getWlanInterface());
        renderContext.put("cSubnet", startupParameters.getcSubnet());
        renderContext.put("deviceType", startupParameters.getDeviceType());
        String networkName = computeDefaultName(startupParameters)+".erigo";
        renderContext.put( "networkName", networkName);
    }


    public void writeAdHocNetworkConfig() throws IOException {
        transformAndWrite(new File(storageDirectory, "/adhoc"), targetDirectory);
    }

    public void writeRegularNetworkConfig(List<SettingValue> settingValueList) throws IOException {
        settingValueList.forEach((v)->{
            renderContext.put(v.getName(), v.getValue());
        });
        transformAndWrite(new File(storageDirectory, "/wifi"), targetDirectory);
    }



    public static String computeDefaultName(StartupParameters startupParameters){
        String postFix = "UNKNOWN";
        try {
            NetworkInterface networkInterface = NetworkInterface.getByName(startupParameters.getWlanInterface());
            if(networkInterface == null){
                networkInterface = NetworkInterface.getByInetAddress(InetAddress.getLocalHost());
            }
            byte[] mac = networkInterface.getHardwareAddress();
            postFix = Integer.toHexString(mac[mac.length - 2]) +
                    Integer.toHexString(mac[mac.length - 1]);
        } catch (UnknownHostException | SocketException e) {
            LOGGER.log(Level.WARNING, "Failed to get MAC address.", e);
        }
        return startupParameters.getDeviceType()+"-"+postFix;
    }

}
