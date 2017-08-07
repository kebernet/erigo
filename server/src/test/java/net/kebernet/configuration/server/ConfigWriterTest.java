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

import com.google.common.base.Charsets;
import com.google.common.io.CharStreams;
import net.kebernet.configuration.client.model.SettingValue;
import net.kebernet.configuration.server.model.ConfigurationGroup;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Collections;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;

public class ConfigWriterTest {


    @Test
    public void testSimple() throws IOException {
        ConfigurationGroup group = new ConfigurationGroup();
        group.setName("groupName");
        group.setTemplateFiles(Collections.singletonList("tmp/the-file.txt"));
        group.setBeforeScriptTemplate("before.sh");
        group.setAfterScriptTemplate("after.sh");

        List<SettingValue> settings = Collections.singletonList(new SettingValue("user_name", "Bob"));
        File targetDir = new File(System.getProperty("build.dir")+"/test", ConfigWriterTest.class.getSimpleName());
        File storageDir = new File(System.getProperty("test.resources")+"/ConfigWriterTest");
        ScriptExecutor executor = mock(ScriptExecutor.class);
        ConfigWriter writer = new ConfigWriter(targetDir, storageDir, executor);

        writer.executeApplyGroups(Collections.singletonList(group), settings);

        File written = new File(targetDir, group.getTemplateFiles().get(0));
        try(InputStreamReader r = new InputStreamReader(new FileInputStream(written), Charsets.UTF_8)){
            String read = CharStreams.toString(r);
            assertEquals("Hello, Bob", read.trim());
        }
        verify(executor, times(2)).runScript(anyString());
        verifyNoMoreInteractions(executor);
    }

}