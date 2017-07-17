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

import com.github.mustachejava.DefaultMustacheFactory;
import com.github.mustachejava.Mustache;
import com.github.mustachejava.MustacheFactory;
import com.google.common.base.Charsets;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.inject.Singleton;

/**
 * Created by rcooper on 6/13/17.
 */
@Singleton
public class WifiConfigWriter {
    private static final Logger LOGGER = Logger.getLogger(WifiConfigWriter.class.getCanonicalName());
    private final MustacheFactory factory = new DefaultMustacheFactory();
    private final Map<String, Object> renderContext = new HashMap<>();
    private final String targetDirectory;
    private final String settingsDirectory;

    @Inject
    public WifiConfigWriter(StartupParameters startupParameters) {
        renderContext.put("deviceName", startupParameters.getDeviceType());
        renderContext.put("wlanInterface", startupParameters.getWlanInterface());
        renderContext.put("cSubnet", startupParameters.getcSubnet());
        renderContext.put("deviceType", startupParameters.getDeviceType());
        String postFix = "UNKNOWN";
        try {
            byte[] mac = NetworkInterface.getByInetAddress(InetAddress.getLocalHost()).getHardwareAddress();
            postFix = Integer.toHexString(mac[mac.length - 2]) +
                    Integer.toHexString(mac[mac.length - 1]);
        } catch (UnknownHostException | SocketException e) {
            LOGGER.log(Level.WARNING, "Failed to get MAC address.", e);
        }
        String networkName = startupParameters.getDeviceType()+"-"+postFix;
        if(networkName.contains(" ")){
            networkName = "'"+networkName+"'";
        }
        renderContext.put( "networkName", networkName);
        this.targetDirectory = startupParameters.getTargetDirectory();
        this.settingsDirectory = startupParameters.getStorageDirectory();
    }


    public void writeAdHocNetworkConfig() throws IOException {
        File adHocTemplateFolder  = new File(settingsDirectory, "/adhoc");
        for (String file : FileUtils.listAllRelativeFilePaths(adHocTemplateFolder)) {
            File source = new File(adHocTemplateFolder, file);
            File target = new File(targetDirectory, file);
            if (!target.getParentFile().mkdirs()) {
                LOGGER.info("Didn't mkdirs " + target.getParentFile());
            }

            LOGGER.info("Transforming from "+source.getAbsolutePath()+" to "+target.getAbsolutePath());
            try (Writer output = new OutputStreamWriter(new FileOutputStream(target), Charsets.UTF_8)) {
                Mustache mustache = factory.compile(
                        new InputStreamReader(new FileInputStream(source), Charsets.UTF_8)
                        , file);

                mustache.execute(output, renderContext);
                output.close();
            }
        }
    }


}
