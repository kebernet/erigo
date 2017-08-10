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

import com.google.common.collect.Multimap;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import net.kebernet.configuration.client.model.SettingValue;
import net.kebernet.configuration.client.model.Settings;
import net.kebernet.configuration.server.ConfigWriter;
import net.kebernet.configuration.server.model.ConfigurationGroup;
import net.kebernet.configuration.server.model.ConfigurationGroupRepository;
import net.kebernet.configuration.server.model.SettingValueRepository;

import javax.inject.Inject;
import javax.inject.Singleton;
import javax.validation.ValidationException;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

/**
 * Created by rcooper on 7/6/17.
 */

@Singleton
@Path("/settings")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
@Api(value = "/settings", description = "Managed device settings.")
public class SettingsResource {
    private static final Logger LOGGER = Logger.getLogger(SettingsResource.class.getCanonicalName());
    private final ConfigurationGroupRepository repository;
    private final SettingValueRepository values;
    private final ConfigWriter configWriter;

    @Inject
    public SettingsResource(ConfigurationGroupRepository repository, SettingValueRepository values, ConfigWriter configWriter) {
        this.repository = repository;
        this.values = values;
        this.configWriter = configWriter;
    }


    @GET
    public Settings findSettings() throws IOException {
        Settings settings = new Settings();
        settings.setDescription(values.findValue("host_description", ""));
        if(repository.load()){
            LOGGER.info("Reloaded configuration groups.");
        }
        settings.setGroups(repository.getGroups()
            .stream()
            .map(ConfigurationGroup::getSettingsGroup)
            .collect(Collectors.toList()));
        return settings;
    }

    @GET
    @Path("/values")
    @ApiResponses({
            @ApiResponse(code = 200, message = "List the values",
                    response = SettingValue.class,
                    responseContainer = "List")
    })
    public List<SettingValue> values() throws IOException {
        if(values.load()){
            // TODO We should maybe re-apply here too?
            LOGGER.info("Reloaded settings values.");
        }
        return values.getValues();
    }

    @POST
    @Path("/values")
    @ApiResponses({
            @ApiResponse(code = 204, message = "Updated"),
            @ApiResponse(code = 400, message = "Invalid request or setting value")
    })
    public void values(List<SettingValue> update) throws IOException {
        Multimap<String, Pattern> expressions = repository.getValidationExpressions();
        update.forEach(sv->{
            if(expressions.containsKey(sv.getName())){
                expressions.get(sv.getName()).forEach(p->{
                    if(!p.matcher(sv.getValue()).matches()){
                        throw new ValidationException("Couldn't validate "+sv.getName());
                    }
                });
            }
        });
        values.storeValues(update);
        configWriter.executeApplyGroups(
                repository.findGroupsNeedingExecutionForChanges(update),
                values.getValues());
    }



}
