package net.kebernet.configuration.server.data;

import net.kebernet.configuration.client.model.Settings;

/**
 * Created by rcooper on 6/20/17.
 */
public interface SettingsRepository {

    Settings findSettings();
    void saveSettings(Settings settings);
}
