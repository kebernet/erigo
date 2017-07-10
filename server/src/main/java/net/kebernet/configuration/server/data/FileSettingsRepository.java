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
