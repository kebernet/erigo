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

import net.kebernet.configuration.client.model.Group;

import java.util.ArrayList;
import java.util.List;


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
        this.name = name;
        this.settingsGroup = settingsGroup;
    }

    public String getName() {
        return name;
    }

    public String getBeforeScriptTemplate() {
        return beforeScriptTemplate;
    }

    public void setBeforeScriptTemplate(String beforeScriptTemplate) {
        this.beforeScriptTemplate = beforeScriptTemplate;
    }

    public String getAfterScriptTemplate() {
        return afterScriptTemplate;
    }

    public void setAfterScriptTemplate(String afterScriptTemplate) {
        this.afterScriptTemplate = afterScriptTemplate;
    }

    public Group getSettingsGroup() {
        return settingsGroup;
    }

    public List<String> getTemplateFiles() {
        return templateFiles;
    }

    public void setTemplateFiles(List<String> templateFiles) {
        this.templateFiles = templateFiles;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSettingsGroup(Group settingsGroup) {
        this.settingsGroup = settingsGroup;
    }
}
