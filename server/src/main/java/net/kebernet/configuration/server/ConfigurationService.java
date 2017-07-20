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
import dagger.ObjectGraph;
import io.dropwizard.Application;
import io.dropwizard.assets.AssetsBundle;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import io.swagger.jaxrs.config.BeanConfig;
import io.swagger.jaxrs.listing.ApiListingResource;
import net.kebernet.configuration.server.endpoint.DeviceResource;
import net.kebernet.configuration.server.endpoint.SettingsResource;
import net.kebernet.configuration.server.http.CorsFilter;
import net.kebernet.configuration.server.http.GsonJerseyProvider;
import net.kebernet.configuration.server.http.PamFilter;
import net.kebernet.configuration.server.http.RequireSslFilter;

import javax.servlet.DispatcherType;
import java.io.File;
import java.util.EnumSet;
import java.util.logging.Logger;

/**
 * This is the main application class.
 */
public class ConfigurationService extends Application<DropwizardConfiguration> {
    private static final Logger LOGGER = Logger.getLogger(ConfigurationService.class.getCanonicalName());
    private final ObjectGraph graph;
    private final StartupParameters parameters;

    public ConfigurationService(StartupParameters parameters, ObjectGraph graph) {
        this.parameters = parameters;
        this.graph = graph;
    }

    public static void main(String[] args) throws Exception {
        StartupParameters parameters = new StartupParameters();
        JCommander.newBuilder()
                .addObject(parameters)
                .build()
                .parse(args);
        startup(parameters);
    }

    public static void startup(StartupParameters parameters) throws Exception{
        LOGGER.info("Instantiating object graph.");
        ObjectGraph graph = ObjectGraph.create(new ServerModule(parameters));

        LOGGER.info("Exporting default files.");
        graph.get(DefaultFileExporter.class)
                .exportMissingFiles();
        File storageDirectory = new File(parameters.getTargetDirectory(), parameters.getStorageDirectory());
        String keystore =  new File(storageDirectory, "keystore.jks").getAbsolutePath();
        LOGGER.info("Using Keystore: "+keystore);
        System.getProperties().setProperty("dw.server.applicationConnectors[1].keyStorePath", keystore);
        LOGGER.info("Starting web app.");
        ConfigurationService service = new ConfigurationService(parameters, graph);
        service.run(
                parameters.getMode(),
                Resources.getResource("server.yml").getPath()
        );

    }

    @Override
    public void initialize(Bootstrap<DropwizardConfiguration> bootstrap) {
        super.initialize(bootstrap);
        bootstrap.addBundle( new AssetsBundle("/swaggerui/", "/doc/", "index.html"));
    }

    @Override
    public void run(DropwizardConfiguration configuration, Environment environment) throws Exception {
        environment.servlets().addFilter("CrossOriginRequestFilter", new CorsFilter())
                .addMappingForUrlPatterns(EnumSet.allOf(DispatcherType.class), true, "/*");
        if(!parameters.isDontRequireSsl()){
            environment.servlets().addFilter("RequireSslFilter", new RequireSslFilter())
                    .addMappingForUrlPatterns(EnumSet.allOf(DispatcherType.class), true, "/*");
        }
        if(!parameters.isDontRequireLogin()){
            environment.servlets().addFilter("PAMAuthenticationFilter", new PamFilter())
                    .addMappingForUrlPatterns(EnumSet.allOf(DispatcherType.class), true, "/*");
        }

        graph.get(MulticastDNSService.class).start();
        environment.jersey().register(GsonJerseyProvider.class);
        environment.jersey().register(new ApiListingResource());
        environment.jersey().register(graph.get(DeviceResource.class));
        environment.jersey().register(graph.get(SettingsResource.class));


        BeanConfig config = new BeanConfig();
        config.setTitle("Erigo Configuration Service");
        config.setVersion("1.0.0");
        config.setResourcePackage(DeviceResource.class.getPackage().getName());
        config.setScan(true);
    }
}
