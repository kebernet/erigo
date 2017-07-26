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
import net.kebernet.configuration.server.model.SettingValueRepository;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class DeviceResourceTest {
    @Test
    public void deviceDefaultsTest() throws Exception {
        SettingValueRepository repository = mock(SettingValueRepository.class);
        // return default value for everything.
        when(repository.findValue(anyString(), anyString())).then(invocation -> invocation.getArgument(1));
        StartupParameters parameters = new StartupParameters();

        DeviceResource resource = new DeviceResource(repository, parameters);
        Device device = resource.device();

        assertEquals(parameters.getDeviceType(), device.getType());
        assertEquals("Raspberry Pi", device.getManufacturer());
        assertEquals("https://upload.wikimedia.org/wikipedia/en/thumb/c/cb/Raspberry_Pi_Logo.svg/810px-Raspberry_Pi_Logo.svg.png", device.getThumbnailUrl());
        assertEquals("/settings", device.getSettingsUrl());
        assertEquals("/settings/values", device.getSettingsValuesUrl());
        assertTrue(device.getName().startsWith("RaspberryPi"));
    }

}