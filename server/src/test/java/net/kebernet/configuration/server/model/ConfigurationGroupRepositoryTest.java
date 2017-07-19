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
package net.kebernet.configuration.server.model;

import net.kebernet.configuration.server.DefaultFileExporter;
import net.kebernet.configuration.server.StartupParameters;
import org.junit.Test;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;
import java.util.stream.Collectors;

import static org.junit.Assert.*;

/**
 * Created by rcooper on 7/18/17.
 */
public class ConfigurationGroupRepositoryTest {


    @Test
    public void testLoad() throws IOException {
        if (System.getProperty("build.dir") == null) {
            throw new RuntimeException("No build dir");
        }
        File dir = new File(System.getProperty("build.dir") + "/test", ConfigurationGroupRepositoryTest.class.getSimpleName() + "-load");
        File etc = new File(dir, "erigo");
        if (!dir.mkdirs() || !dir.mkdir()) {
            Logger.getAnonymousLogger().info("Didn't mkdir " + dir);
        }

        //Write files.
        new DefaultFileExporter(etc, new StartupParameters()).exportMissingFiles();
        ConfigurationGroupRepository repository = new ConfigurationGroupRepository(etc);
        assertTrue(repository.load());
        List<ConfigurationGroup> groups = repository.getGroups();
        assertTrue(groups.stream().map(ConfigurationGroup::getName).collect(Collectors.toSet()).contains("host"));
        assertEquals("wireless", groups.get(0).getName());
        assertEquals("host", groups.get(1).getName());
        assertNotNull(groups.get(1).getBeforeScriptTemplate());
        assertEquals(1, groups.get(1).getTemplateFiles().size());
        // validate we don't reload
        assertFalse(repository.load());
        // touch a file
        new File(etc.getAbsolutePath() + "/configs/host/group.json").setLastModified(System.currentTimeMillis());
        // validate reload.
        assertTrue(repository.load());

    }

}