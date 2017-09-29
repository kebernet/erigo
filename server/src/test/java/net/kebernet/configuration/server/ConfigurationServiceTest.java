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

import org.junit.Ignore;
import org.junit.Test;

import java.io.File;
import java.util.concurrent.TimeUnit;

/**
 * Created by rcooper on 7/19/17.
 */
public class ConfigurationServiceTest {
    @Test @Ignore
    public void testServer() throws Exception {
        File targetDir = new File(System.getProperty("build.dir")+"/test", ConfigurationServiceTest.class.getSimpleName());
        StartupParameters parameters = new StartupParameters();
        parameters.setWlanInterface("en0");
        parameters.setGroovyShellEnabled(true);
        parameters.setTargetDirectory(targetDir.getAbsolutePath());
        parameters.setStorageDirectory(new File(targetDir, "etc").getAbsolutePath());
        ConfigurationService.startup(parameters);
        Thread.sleep(TimeUnit.MINUTES.toMillis(20));
    }

}