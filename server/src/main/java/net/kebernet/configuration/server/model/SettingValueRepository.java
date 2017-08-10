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
package net.kebernet.configuration.server.model;

import com.google.common.base.Charsets;
import net.kebernet.configuration.client.model.SettingValue;

import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;

/**
 *
 * A repository that store settings to the settings.properties file in the storage directory.
 *
 * Created by rcooper on 7/18/17.
 */
@Singleton
public class SettingValueRepository {

    private final File storageDirectory;
    private final Properties properties = new Properties();
    private final File settingsFile;
    private final String defaultDeviceName;
    private long lastRead = Long.MIN_VALUE;

    @Inject
    public SettingValueRepository(@Named("storageDirectory") File storageDirectory,  @Named("defaultDeviceName") String defaultDeviceName) {
        this.storageDirectory = storageDirectory;
        this.defaultDeviceName = defaultDeviceName;
        this.settingsFile = new File(storageDirectory, "settings.properties");

    }

    public synchronized boolean load() throws IOException {
        File settingsFile = new File(storageDirectory, "settings.properties");
        if (settingsFile.exists() && lastRead < settingsFile.lastModified()) {
            properties.clear();
            try(Reader r = new InputStreamReader(new FileInputStream(settingsFile), Charsets.UTF_8)) {
                properties.load(r);
            }
            return true;
        }
        return false;
    }

    public List<SettingValue> getValues() {
        return properties.entrySet()
                .stream()
                .map(
                        e -> new SettingValue(e.getKey().toString(),
                                e.getValue() == null ? null : e.getValue().toString())
                )
                .collect(Collectors.toList());
    }

    public synchronized void storeValues(List<SettingValue> values) throws IOException {
        values.forEach(v -> {
            if (v.getValue() == null) {
                properties.remove(v.getName());
            } else {
                properties.setProperty(v.getName(), v.getValue());
            }
        });
        if(!settingsFile.exists() && !settingsFile.createNewFile()){
            throw new IOException("Failed to create "+settingsFile.getAbsolutePath());
        }
        try(Writer w = new OutputStreamWriter(new FileOutputStream(settingsFile), Charsets.UTF_8)) {
            properties.store(w, "Device settings");
        }
    }

    public String findValue(String settingName, String defaultValue) {
        return properties.getProperty(settingName, defaultValue);
    }

    public String getDeviceName(){
        return findValue("host_name", defaultDeviceName);
    }
}
