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
