package net.kebernet.configuration.server.data;

import com.fasterxml.jackson.core.JsonFactory;
import net.kebernet.configuration.client.model.Settings;

import java.io.File;

/**
 * Created by rcooper on 6/20/17.
 */
public class FileSettingsRepository implements SettingsRepository {


    private final File settingsDirectory;
    private final JsonFactory factory;

    public FileSettingsRepository(File settingsDirectory, JsonFactory factory) {
        this.settingsDirectory = settingsDirectory;
        this.factory = factory;
    }

    @Override
    public Settings findSettings() {
        return null;
    }

    @Override
    public synchronized void saveSettings(Settings settings) {

    }
}
