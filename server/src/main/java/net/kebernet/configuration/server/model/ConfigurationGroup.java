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

import com.google.common.base.MoreObjects;
import net.kebernet.configuration.client.model.Group;
import net.kebernet.configuration.client.model.Setting;

import java.util.List;
import java.util.Optional;
import java.util.Set;


/**
 * Created by rcooper on 7/15/17.
 */
public class ConfigurationGroup {

    private String name;
    private String beforeScriptTemplate;
    private String afterScriptTemplate;
    private Group settingsGroup;
    private List<String> templateFiles;

    public ConfigurationGroup() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Optional<String> getBeforeScriptTemplate() {
        return Optional.ofNullable(beforeScriptTemplate);
    }

    public void setBeforeScriptTemplate(String beforeScriptTemplate) {
        this.beforeScriptTemplate = beforeScriptTemplate;
    }

    public Optional<String> getAfterScriptTemplate() {
        return Optional.ofNullable(afterScriptTemplate);
    }

    public void setAfterScriptTemplate(String afterScriptTemplate) {
        this.afterScriptTemplate = afterScriptTemplate;
    }

    public Group getSettingsGroup() {
        return settingsGroup;
    }

    public void setSettingsGroup(Group settingsGroup) {
        this.settingsGroup = settingsGroup;
    }

    public List<String> getTemplateFiles() {
        return templateFiles;
    }

    public void setTemplateFiles(List<String> templateFiles) {
        this.templateFiles = templateFiles;
    }

    public boolean changesOnSetting(Set<String> settingNames) {
        return getSettingsGroup()
                .getSettings()
                .stream()
                .map(Setting::getName)
                .anyMatch(settingNames::contains);
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .add("name", name)
                .add("beforeScriptTemplate", beforeScriptTemplate)
                .add("afterScriptTemplate", afterScriptTemplate)
                .add("settingsGroup", settingsGroup)
                .add("templateFiles", templateFiles)
                .toString();
    }
}
