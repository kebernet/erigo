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

import java.io.File;

import javax.inject.Named;
import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;

/**
 * Created by rcooper on 7/17/17.
 */

@Module(
        injects = {
                ExportDefaultFiles.class
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
    public File storageDirectory() {
        return new File(parameters.getStorageDirectory());
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
}
