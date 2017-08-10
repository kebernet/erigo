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

import net.kebernet.configuration.client.model.SettingValue;
import org.junit.Test;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.logging.Logger;

import static org.junit.Assert.*;

public class SettingValueRepositoryTest {

    @Test
    public void testRoundTrip() throws IOException {
        if (System.getProperty("build.dir") == null) {
            throw new RuntimeException("No build dir");
        }
        File dir = new File(System.getProperty("build.dir") + "/test", SettingValueRepositoryTest.class.getSimpleName());
        File etc = new File(dir, "etc/erigo");
        if (!etc.mkdirs() || !etc.mkdir()) {
            Logger.getAnonymousLogger().info("Didn't mkdir " + etc);
        }

        SettingValueRepository repo = new SettingValueRepository(etc, "Unit Test Device");
        File props = new File(etc,"settings.properties");
        if(props.exists() && !props.delete()){
            throw new IOException("Couldn't delete old file.");
        }
        assertFalse(repo.load());

        repo.storeValues(Arrays.asList(new SettingValue("test1", "testVal1"),
                new SettingValue("test2", "testVal2"), new SettingValue("test4", "testVal4")));
        repo.storeValues(Arrays.asList(new SettingValue("test4", null)));

        assertTrue(repo.getValues().contains(new SettingValue("test1", "testVal1")));
        assertEquals("testVal2", repo.findValue("test2", null));
        assertNull(repo.findValue("test4", null));
        assertEquals( "default3",repo.findValue("test3", "default3"));


        SettingValueRepository repo2 = new SettingValueRepository(etc, "Unit Test Device");
        assertNull(repo2.findValue("test1", null));
        repo2.load();
        assertEquals("testVal2", repo.findValue("test2", null));
    }

}