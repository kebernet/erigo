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

import java.util.List;

/**
 * Created by rcooper on 7/3/17.
 */
public interface SettingsService {

    boolean canResolve(String settingsAddress);
    void listSettings(String settingsAddress, SettingsCallback callback);
    void listValues(String valuesUrl, ValuesCallback callback);
    void saveSettings(String valuesAddress, List<SettingValue> values, SaveCallback callback);

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
