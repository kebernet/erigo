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
import net.kebernet.configuration.client.model.SettingValue;
import net.kebernet.configuration.client.service.SettingsService;

import javax.annotation.Nonnull;
import javax.inject.Inject;
import java.lang.reflect.Type;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;

import static com.google.common.base.Preconditions.checkNotNull;

/**
 * An implementation of the SettingsService repository for HTTP/HTTPS based devices.
 */
public class HttpDeviceSettings implements SettingsService {
    private static final Type VALUES_LIST_TYPE = new TypeToken<List<SettingValue>>() {
    }.getType();
    private static final Logger LOGGER = Logger.getLogger(HttpDeviceSettings.class.getCanonicalName());
    private static final Set<String> SCHEMES = ImmutableSet.of("http", "https");
    public static final String YOU_MUST_PROVIDE_A_CALLBACK = "You must provide a callback.";
    public static final String NO_SETTINGS_ADDRESS_PROVIDED = "No settings address provided.";
    private final HttpClient client;

    @Inject
    public HttpDeviceSettings(@Nonnull HttpClient client) {
        checkNotNull(client, "No HttpClient provided.");
        this.client = client;
    }

    @Override
    public boolean canResolve(@Nonnull String settingsAddress) {
        checkNotNull(settingsAddress, NO_SETTINGS_ADDRESS_PROVIDED);
        try {
            return SCHEMES.contains(new URI(settingsAddress).getScheme().toLowerCase());
        } catch (URISyntaxException e) {
            return false;
        }
    }

    @Override
    public void listSettings(@Nonnull String deviceName, @Nonnull String settingsAddress, @Nonnull SettingsCallback callback) {
        checkNotNull(settingsAddress, NO_SETTINGS_ADDRESS_PROVIDED);
        checkNotNull(callback, YOU_MUST_PROVIDE_A_CALLBACK);
        client.getToStream(deviceName, settingsAddress, (stream)->{
            callback.onSettingsResponse(new Gson().fromJson(stream, Settings.class));
        });
    }

    @Override
    public void listValues(@Nonnull String deviceName, @Nonnull String valuesUrl, @Nonnull ValuesCallback callback) {
        checkNotNull(valuesUrl, "No values address provided.");
        checkNotNull(callback, YOU_MUST_PROVIDE_A_CALLBACK);
        client.getToStream(deviceName, valuesUrl, (stream)->{
            callback.onValuesResponse(GsonFactory.newInstance().fromJson(stream, VALUES_LIST_TYPE));
        });
    }



    @Override
    public void saveSettings(String deviceName, String valuesAddress, List<SettingValue> values, SaveCallback callback) {

    }
}
