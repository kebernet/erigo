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

import com.beust.jcommander.JCommander;
import com.google.common.io.Resources;
import io.dropwizard.Application;
import io.dropwizard.setup.Environment;
import net.kebernet.configuration.server.http.GsonJerseyProvider;

/**
 * Created by rcooper on 6/16/17.
 */
public class ConfigurationService extends Application<DropwizardConfiguration> {

    private final StartupParameters parameters;

    public ConfigurationService(StartupParameters parameters) {
        this.parameters = parameters;
    }

    public static void main(String[] args) throws Exception {
        StartupParameters parameters = new StartupParameters();
        JCommander.newBuilder()
                .addObject(parameters)
                .build()
                .parse(args);
        new ConfigurationService(parameters)
                .run(
                    parameters.getMode(),
                    Resources.getResource("server.yml").getPath()
                );
    }




    @Override
    public void run(DropwizardConfiguration configuration, Environment environment) throws Exception {
        environment.jersey().register(GsonJerseyProvider.class);
    }
}
