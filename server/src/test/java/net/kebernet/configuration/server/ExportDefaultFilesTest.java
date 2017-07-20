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
import java.io.IOException;
import java.util.Arrays;
import java.util.logging.Logger;

import static org.junit.Assert.assertTrue;

/**
 * Created by rcooper on 7/17/17.
 */
public class ExportDefaultFilesTest {

    @Test
    public void testWriteDefaults() throws IOException {
        File settingsDirectory = new File(System.getProperty("build.dir")+"/test", DefaultFileExporter.class.getSimpleName());
        if(!settingsDirectory.mkdirs()){
            Logger.getAnonymousLogger().info("Didn't create "+settingsDirectory.getAbsolutePath());
        }
        new DefaultFileExporter(settingsDirectory, new SettingValueRepository(settingsDirectory, "testThing")).exportMissingFiles();
        for(String string : Arrays.asList(
                "/configs/host/var/tmp/sethostname.sh",
                "/configs/host/group.json",
                "/configs/host/before.sh",
                "/configs/host/after.sh")){
            File f = new File(settingsDirectory, string);
            assertTrue("Exists: "+f.getAbsolutePath(), f.exists());
        }

    }

}
