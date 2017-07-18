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

import net.kebernet.configuration.server.http.GsonJerseyProvider;

import java.util.logging.Logger;

import dagger.ObjectGraph;
import io.dropwizard.Application;
import io.dropwizard.setup.Environment;

/**
 * This is the main application class.
 */
public class ConfigurationService extends Application<DropwizardConfiguration> {
    private static final Logger LOGGER = Logger.getLogger(ConfigurationService.class.getCanonicalName());
    private final ObjectGraph graph;

    public ConfigurationService(ObjectGraph graph) {
        this.graph = graph;
    }

    public static void main(String[] args) throws Exception {
        StartupParameters parameters = new StartupParameters();
        JCommander.newBuilder()
                .addObject(parameters)
                .build()
                .parse(args);
        LOGGER.info("Instantiating object graph.");
        ObjectGraph graph = ObjectGraph.create(new ServerModule(parameters));

        LOGGER.info("Exporting default files.");
        graph.get(DefaultFileExporter.class)
                .exportMissingFiles();

        LOGGER.info("Starting web app.");
        new ConfigurationService(graph)
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
