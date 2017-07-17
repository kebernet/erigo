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
package net.kebernet.configuration.client.service;

import net.kebernet.configuration.client.model.Settings;
import net.kebernet.configuration.client.model.SettingValue;

import javax.annotation.Nonnull;
import java.util.List;

/**
 * Created by rcooper on 7/3/17.
 */
public interface SettingsService {

    boolean canResolve(@Nonnull String settingsAddress);
    void listSettings(@Nonnull String deviceName, @Nonnull String settingsAddress, @Nonnull SettingsCallback callback);
    void listValues(@Nonnull String deviceName, @Nonnull String valuesUrl, @Nonnull ValuesCallback callback);
    void saveSettings(@Nonnull String deviceName, @Nonnull String valuesAddress, @Nonnull List<SettingValue> values, @Nonnull SaveCallback callback);

    interface ValuesCallback {
        void onValuesResponse(List<SettingValue> values);
    }

    interface SettingsCallback {
        void onSettingsResponse(Settings settings);
    }

    interface SaveCallback {
        void onSave(boolean success);
    }
}
