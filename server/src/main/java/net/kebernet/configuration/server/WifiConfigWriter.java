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
import org.eclipse.jetty.util.annotation.Name;

import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.List;
import java.util.logging.Level;

/**
 * A special case config writer for dealing with Wifi settings.
 * Created by rcooper on 6/13/17.
 */
@Singleton
public class WifiConfigWriter extends ConfigWriter {

    @Inject
    public WifiConfigWriter(@Named("targetDirectory") File targetDirectory, @Named("storageDirectory") File storageDirectory, StartupParameters parameters, ScriptExecutor executor) {
        super(targetDirectory, storageDirectory, executor);
        renderContext.put("deviceName", parameters.getDeviceType());
        renderContext.put("wlanInterface", parameters.getWlanInterface());
        renderContext.put("cSubnet", parameters.getCSubnet());
        renderContext.put("deviceType", parameters.getDeviceType());
        String networkName = computeDefaultName(parameters)+".erigo";
        renderContext.put( "networkName", networkName);
    }


    public void writeAdHocNetworkConfig() throws IOException {
        doScript("before.sh", "adhoc", "adhoc", "before");
        transformAndWrite(new File(storageDirectory, "/adhoc"), targetDirectory);
        doScript("after.sh", "adhoc", "adhoc", "after");
    }

    public void writeRegularNetworkConfig(List<SettingValue> settingValueList) throws IOException {
        doScript("before.sh", "wifi", "wifi", "before");
        settingValueList.forEach((v)->{
            renderContext.put(v.getName(), v.getValue());
        });
        transformAndWrite(new File(storageDirectory, "/wifi"), targetDirectory);
        doScript("after.sh", "wifi", "wifi", "after");
    }

    private void transformAndWrite(File templateFolder, File destinationFolder) throws IOException {
        FileUtils.listAllRelativeFilePaths(templateFolder)
                .parallelStream()
                .filter(f-> !"after.sh".equals(f) &&!"before.sh".equals(f))
                .forEach(f -> {
                    try {
                        transformFile(templateFolder, destinationFolder, f);
                    } catch (IOException e) {
                        LOGGER.log(Level.WARNING, "Couldn't transform", f);
                    }
                });

    }



    public static String computeDefaultName(StartupParameters startupParameters){
        String postFix = "UNKNOWN";
        byte[] mac = null;
        try {
            mac = NetworkInterface.getByName(startupParameters.getWlanInterface()).getHardwareAddress();
        } catch(Exception e){
            LOGGER.log(Level.WARNING, "Failed to get "+startupParameters.getWlanInterface()+" interface. Falling back to localhost", e);
            try {
                mac = NetworkInterface.getByInetAddress(InetAddress.getLocalHost()).getHardwareAddress();
            } catch(Exception le) {
                LOGGER.log(Level.WARNING, "Failed to get localhost interface.", le);
            }
        }
        if(mac != null) {
            postFix = Integer.toHexString(mac[mac.length - 2]) +
                    Integer.toHexString(mac[mac.length - 1]);
        }

        return startupParameters.getDeviceType()+"-"+postFix;
    }

}
