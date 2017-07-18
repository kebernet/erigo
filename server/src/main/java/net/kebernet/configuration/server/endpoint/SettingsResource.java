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
package net.kebernet.configuration.server.endpoint;

import net.kebernet.configuration.client.model.SettingValue;
import net.kebernet.configuration.client.model.Settings;
import net.kebernet.configuration.server.model.ConfigurationGroup;
import net.kebernet.configuration.server.model.ConfigurationGroupRepository;
import net.kebernet.configuration.server.model.SettingValueRepository;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by rcooper on 7/6/17.
 */

@Path("/settings")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class SettingsResource {

    private final ConfigurationGroupRepository repository;
    private final SettingValueRepository values;

    @Inject
    public SettingsResource(ConfigurationGroupRepository repository, SettingValueRepository values) {
        this.repository = repository;
        this.values = values;
    }


    @GET
    public Settings getSettings() throws IOException {
        Settings settings = new Settings();
        settings.setDescription("My Raspberry Pi");
        repository.load();
        settings.setGroups(repository.getGroups()
            .stream()
            .map(ConfigurationGroup::getSettingsGroup)
            .collect(Collectors.toList()));
        return settings;
    }

    @GET
    @Path("/values")
    public List<SettingValue> values() throws IOException {
        values.load();
        return values.getValues();
    }

    @POST
    @Path("/values")
    public void values(List<SettingValue> update) throws IOException {
        values.storeValues(update);
    }



}
