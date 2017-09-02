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

import com.google.common.base.Joiner;

import javax.inject.Inject;
import javax.inject.Singleton;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.logging.Logger;

@Singleton
public class ScriptExecutor {

    private static final Logger LOGGER = Logger.getLogger(ScriptExecutor.class.getCanonicalName());

    @Inject
    public ScriptExecutor(){

    }

    public void runScript(String... command){
        String commandString = Joiner.on(" ").join(command);
        LOGGER.info("Executing "+ commandString);
        File f = new File(command[0]);
        if (!f.setExecutable(true, true)) {
            throw new ScriptException("Couldn't make " + commandString + " executable.", null, Integer.MIN_VALUE);
        }
        try {
            int result = new ProcessBuilder(f.getAbsolutePath())
                    .command(Arrays.asList(command))
                    .inheritIO()
                    .directory(f.getParentFile())
                    .start()
                    .waitFor();
            if(result != 0){
                throw new ScriptException("Got invalid return code ("+result+") running "+commandString, null, result);
            }
        } catch (IOException | InterruptedException e) {
            throw new ScriptException("Failed to run " + commandString, e, Integer.MIN_VALUE);
        }

    }

    public void runScript(String path){
        runScript(new String[]{path});
    }

    public void runAndDeleteScript(String path) {
        runScript(path);
        File f = new File(path);
        if(!f.delete()){
            throw new ScriptException("Failed to delete "+path+" after running", null, Integer.MIN_VALUE);
        }
    }


    public static class ScriptException extends RuntimeException {

        private final int returnCode;

        public ScriptException(String message, Throwable cause, int returnCode){
            super(message, cause);
            this.returnCode = returnCode;
        }

        public int getReturnCode() {
            return returnCode;
        }
    }
}
