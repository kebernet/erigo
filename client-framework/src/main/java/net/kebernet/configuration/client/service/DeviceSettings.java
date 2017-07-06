package net.kebernet.configuration.client.service;

import net.kebernet.configuration.client.model.Settings;

/**
 * Created by rcooper on 7/3/17.
 */
public interface DeviceSettings {

    boolean canResolve(String settingsAddress);
    void listSettings(String settingsAddress, SettingsCallback callback);
    void saveSettings(String settingsAddress, Settings settings, SaveCallback callback);

    interface SettingsCallback {
        void onSettingsResponse(Settings settings);
    }

    interface SaveCallback {
        void onSave(boolean success);
    }
}
