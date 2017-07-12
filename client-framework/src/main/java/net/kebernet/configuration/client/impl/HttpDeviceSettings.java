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
package net.kebernet.configuration.client.impl;

import com.google.common.collect.ImmutableSet;
import com.google.common.reflect.TypeToken;
import com.google.gson.Gson;
import net.kebernet.configuration.client.model.Settings;
import net.kebernet.configuration.client.model.SettingsValue;
import net.kebernet.configuration.client.service.DeviceSettings;

import java.lang.reflect.Type;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;

/**
 * An implementation of the DeviceSettings repository for HTTP/HTTPS based devices.
 */
public class HttpDeviceSettings implements DeviceSettings {
    private static final Type VALUES_LIST_TYPE = new TypeToken<List<SettingsValue>>() {
    }.getType();
    private static final Logger LOGGER = Logger.getLogger(HttpDeviceSettings.class.getCanonicalName());
    private static final Set<String> SCHEMES = ImmutableSet.of("http", "https");
    private final HttpClient client = new HttpClient();

    @Override
    public boolean canResolve(String settingsAddress) {
        try {
            return SCHEMES.contains(new URI(settingsAddress).getScheme().toLowerCase());
        } catch (URISyntaxException e) {
            return false;
        }
    }

    @Override
    public void listSettings(String settingsAddress, SettingsCallback callback) {
        client.getToStream(settingsAddress, (stream)->{
            callback.onSettingsResponse(new Gson().fromJson(stream, Settings.class));
        });
    }

    @Override
    public void listValues(String valuesUrl, ValuesCallback callback) {
        client.getToStream(valuesUrl, (stream)->{
            callback.onValuesResponse(new Gson().fromJson(stream, VALUES_LIST_TYPE));
        });
    }



    @Override
    public void saveSettings(String valuesAddress, List<SettingsValue> values, SaveCallback callback) {

    }
}
