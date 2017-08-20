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

import net.kebernet.configuration.server.StartupParameters;

import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import java.io.File;

@Singleton
public class ScriptsInspector implements SystemInspector {

    private final File storageDirectory;
    private final StartupParameters parameters;

    @Inject
    public ScriptsInspector(@Named("storageDirectory") File storageDirectory, StartupParameters parameters) {
        this.storageDirectory = storageDirectory;
        this.parameters = parameters;
    }

    @Override
    public synchronized boolean isWifiActive() {
        return false;
    }

    @Override
    public synchronized boolean isAdHocMode() {
        return false;
    }
}
