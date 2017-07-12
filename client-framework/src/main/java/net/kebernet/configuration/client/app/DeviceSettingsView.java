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
package net.kebernet.configuration.client.app;

import net.kebernet.configuration.client.model.Settings;
import net.kebernet.configuration.client.model.SettingsValue;

import java.util.Collection;

/**
 * Created by rcooper on 7/11/17.
 */
public interface DeviceSettingsView {

    void showLoading();
    void hideLoading();

    void setDeviceName(String name);
    void setSettings(Settings settings, Collection<SettingsValue> values);

    void setSettingChangedCallback(SettingsChangedCallback callback);
    void setSaveCallback(SaveCallback callback);

    interface SettingsChangedCallback {
        void onSettingChanged(String name, String value);
    }

    interface SaveCallback {
        void onSaveClicked();
    }
}
