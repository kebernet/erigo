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
@Path("/device")
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
    public Device device(){
        Device value = new Device();
        value.setName(valueRepository.findValue("host_name", WifiConfigWriter.computeDefaultName(parameters)));
        value.setThumbnailUrl(valueRepository.findValue("host_thumbnailUrl", DEFAULT_ICON_URL));
        value.setSettingsUrl("/settings");
        value.setManufacturer(valueRepository.findValue("host_manufacturer", "Raspberry Pi"));
        value.setThumbnailUrl(valueRepository.findValue("host_type", "Raspberry Pi"));
        value.setWebUiUrl(valueRepository.findValue("host_webUiUrl", null));
        value.setTlsCertificateUrl(valueRepository.findValue("host_tlsCertificateUrl", null));
        value.setSettingsValuesUrl("/settings/values");
        return value;
    }
}
