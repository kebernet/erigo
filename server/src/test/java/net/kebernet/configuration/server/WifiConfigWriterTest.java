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
import org.junit.Test;

import java.io.File;
import java.util.logging.Logger;

/**
 * Created by rcooper on 6/15/17.
 */
public class WifiConfigWriterTest {
    @Test
    public void adHocConfigTest() throws Exception {
        if(System.getProperty("build.dir") == null){
            throw new RuntimeException("No build dir");
        }
        File dir = new File(System.getProperty("build.dir")+"/test", WifiConfigWriterTest.class.getSimpleName()+"-adhocConfig");
        File etc = new File(dir, "etc");
        if(!dir.mkdirs() || !dir.mkdir()){
            Logger.getAnonymousLogger().info("Didn't mkdir "+dir);
        }
        new DefaultFileExporter(etc, new SettingValueRepository(etc, "testThing")).exportMissingFiles();
        StartupParameters params = new StartupParameters();
        params.setDeviceType("Unit Test Device");
        params.setcSubnet(26);
        params.setStorageDirectory(etc.getAbsolutePath());
        params.setTargetDirectory(dir.getAbsolutePath());
        try {
            WifiConfigWriter writer = new WifiConfigWriter(params);
            writer.writeAdHocNetworkConfig();

        } catch(Exception e){
            e.printStackTrace();
            throw e;
        }
    }


}
