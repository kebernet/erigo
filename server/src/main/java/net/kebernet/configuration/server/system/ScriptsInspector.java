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
package net.kebernet.configuration.server.system;

import net.kebernet.configuration.server.ScriptExecutor;
import net.kebernet.configuration.server.StartupParameters;

import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import java.io.File;

@Singleton
public class ScriptsInspector implements SystemInspector {

    private final ScriptExecutor executor;
    private final File adHocModeScript;
    private final File interfaceActiveScript;
    private final StartupParameters parameters;

    @Inject
    public ScriptsInspector(@Named("storageDirectory") File storageDirectory, ScriptExecutor executor, StartupParameters parameters) {
        File scriptsDirectory = new File(storageDirectory, "scripts");
        this.adHocModeScript = new File(scriptsDirectory, "is-adhoc-mode.sh");
        this.interfaceActiveScript = new File(scriptsDirectory, "is-interface-active.sh");
        this.executor = executor;
        this.parameters = parameters;
    }

    @Override
    public synchronized boolean isWifiActive() {
        return isReturnCodeZero(interfaceActiveScript.getAbsolutePath());
    }

    @Override
    public synchronized boolean isAdHocMode() {
        return isReturnCodeZero(adHocModeScript.getAbsolutePath());
    }

    private boolean isReturnCodeZero(String path){
        try {
            executor.runScript(path, parameters.getWlanInterface());
            return true;
        } catch(ScriptExecutor.ScriptException se){
            return false;
        }
    }
}
