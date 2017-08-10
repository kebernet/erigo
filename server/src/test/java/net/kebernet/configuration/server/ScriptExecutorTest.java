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

import com.google.common.io.Files;
import org.junit.Test;

import java.io.File;
import java.io.IOException;
import java.util.logging.Logger;

import static org.junit.Assert.*;

public class ScriptExecutorTest {

    @Test
    public void testExecuteAndDelete() throws IOException {
        File storageDir = new File(System.getProperty("test.resources")+"/ScriptExecutorTest");
        File scriptFile = new File(storageDir, "touchTheThing.sh");
        File targetDir = new File(System.getProperty("build.dir")+"/test", ScriptExecutorTest.class.getSimpleName());
        if(!targetDir.mkdirs() && !targetDir.mkdir()){
            Logger.getAnonymousLogger().info("Didn't mkdir "+targetDir);
        }
        File tmpScript = new File(targetDir, "tmp.sh");
        Files.copy(scriptFile, tmpScript);

        ScriptExecutor executor = new ScriptExecutor();
        executor.runAndDeleteScript(tmpScript.getAbsolutePath());
        assertFalse(tmpScript.exists());
        assertTrue(new File(targetDir, "theThing").exists());

    }

    @Test(expected = ScriptExecutor.ScriptException.class)
    public void testFailure() throws IOException {
        File storageDir = new File(System.getProperty("test.resources")+"/ScriptExecutorTest");
        File scriptFile = new File(storageDir, "failTheThing.sh");
        File targetDir = new File(System.getProperty("build.dir")+"/test", ScriptExecutorTest.class.getSimpleName());
        if(!targetDir.mkdirs() && !targetDir.mkdir()){
            Logger.getAnonymousLogger().info("Didn't mkdir "+targetDir);
        }
        File tmpScript = new File(targetDir, "tmp.sh");
        Files.copy(scriptFile, tmpScript);

        ScriptExecutor executor = new ScriptExecutor();
        executor.runAndDeleteScript(tmpScript.getAbsolutePath());
    }

}