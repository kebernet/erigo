package net.kebernet.configuration.server;

import net.kebernet.configuration.client.model.Settings;
import net.kebernet.configuration.server.data.SettingsRepository;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 * Created by rcooper on 7/6/17.
 */
@Path("/settings")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class SettingsResource {

    private final SettingsRepository settingsRepository;


    @Inject
    public SettingsResource(SettingsRepository settingsRepository) {
        this.settingsRepository = settingsRepository;
    }


    @GET
    public Settings findSettings(){
        return settingsRepository.findSettings();
    }
}
