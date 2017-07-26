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

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Contact;
import io.swagger.annotations.ExternalDocs;
import io.swagger.annotations.Info;
import io.swagger.annotations.License;
import io.swagger.annotations.SwaggerDefinition;
import io.swagger.annotations.Tag;
import net.kebernet.configuration.client.model.Device;
import net.kebernet.configuration.server.StartupParameters;
import net.kebernet.configuration.server.WifiConfigWriter;
import net.kebernet.configuration.server.model.SettingValueRepository;

import javax.inject.Inject;
import javax.inject.Singleton;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 * The Device information endpoint.
 * Created by rcooper on 7/18/17.
 */
@SwaggerDefinition(
        info = @Info(
                description = "The Erigo Device Configuration service. This lets you configure your IoT-ish devices.",
                version = "1.0.0",
                title = "Erigo Configuration API",
                contact = @Contact(
                        name = "Robert Cooper",
                        email = "kebernet@gmail.com",
                        url = "http://www.kebernet.net"
                ),
                license = @License(
                        name = "Apache 2.0",
                        url = "http://www.apache.org/licenses/LICENSE-2.0"
                )
        ),
        consumes = {"application/json"},
        produces = {"application/json"},
        schemes = {SwaggerDefinition.Scheme.HTTP, SwaggerDefinition.Scheme.HTTPS},
        tags = {
                @Tag(name = "Private", description = "Tag used to denote operations as private")
        },
        externalDocs = @ExternalDocs(value = "Ergio GitHub", url = "http://github.com/kebernet/erigo")
)
@Path("/device")
@Api(value = "/device", description = "Returns the metadata about this device.")
@Singleton
public class DeviceResource {
    private static final String DEFAULT_ICON_URL = "https://upload.wikimedia.org/wikipedia/en/thumb/c/cb/Raspberry_Pi_Logo.svg/810px-Raspberry_Pi_Logo.svg.png";
    private final SettingValueRepository valueRepository;
    private final StartupParameters parameters;

    @Inject
    public DeviceResource(SettingValueRepository valueRepository, StartupParameters parameters) {
        this.valueRepository = valueRepository;
        this.parameters = parameters;
    }

    @GET
    @ApiOperation(
            value = "Retrieve the device information",
            notes = "This information is immutable",
            response = Device.class)
    public Device device(){
        Device value = new Device();
        value.setName(valueRepository.findValue("host_name", WifiConfigWriter.computeDefaultName(parameters)));
        value.setThumbnailUrl(valueRepository.findValue("host_thumbnailUrl", DEFAULT_ICON_URL));
        value.setSettingsUrl("/settings");
        value.setManufacturer(valueRepository.findValue("host_manufacturer", "Raspberry Pi"));
        value.setType(valueRepository.findValue("host_type", parameters.getDeviceType()));
        value.setWebUiUrl(valueRepository.findValue("host_webUiUrl", null));
        value.setTlsCertificateUrl(valueRepository.findValue("host_tlsCertificateUrl", null));
        value.setSettingsValuesUrl("/settings/values");
        return value;
    }
}
