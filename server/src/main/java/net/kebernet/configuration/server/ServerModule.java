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

import dagger.Module;
import dagger.Provides;
import net.kebernet.configuration.server.endpoint.DeviceResource;
import net.kebernet.configuration.server.endpoint.SettingsResource;
import net.kebernet.configuration.server.model.SettingValueRepository;
import net.kebernet.configuration.server.system.ScriptsInspector;
import net.kebernet.configuration.server.system.SystemInspector;

import javax.inject.Named;
import javax.inject.Singleton;
import java.io.File;
import java.time.Clock;

/**
 * Created by rcooper on 7/17/17.
 */

@SuppressWarnings("unused")
@Module(
        injects = {
                DefaultFileExporter.class,
                DeviceResource.class,
                SettingsResource.class,
                MulticastDNSService.class,
                WifiConfigWriter.class,
                SystemInspector.class,
                WifiMonitor.class
        }, library =  true
)
public class ServerModule {

    private final StartupParameters parameters;

    public ServerModule(StartupParameters parameters) {
        this.parameters = parameters;
    }

    @Provides
    @Named("storageDirectory")
    @Singleton
    public File storageDirectory(@Named("targetDirectory") File target) {
        return new File(target, parameters.getStorageDirectory());
    }

    @Provides
    @Named("targetDirectory")
    @Singleton
    public File targetDirectory() {
        return new File(parameters.getTargetDirectory());
    }

    @Provides
    @Singleton
    public StartupParameters parameters(){
        return parameters;
    }

    @Provides
    @Singleton
    @Named("hostMatchRegex")
    public String hostMatchRegex(){
        return parameters.getHostMatchRegex();
    }

    @Provides
    @Singleton
    @Named("defaultDeviceName")
    public String defaultDeviceName(){
        return WifiConfigWriter.computeDefaultName(parameters);
    }

    @Provides
    @Singleton
    public SystemInspector systemInspector(@Named("storageDirectory") File storageDir, SettingValueRepository valueRepository, ScriptExecutor executor){
        return new ScriptsInspector(storageDir, executor, valueRepository, parameters);
    }

    @Provides
    @Singleton
    public Clock clock(){
        return Clock.systemUTC();
    }

}
