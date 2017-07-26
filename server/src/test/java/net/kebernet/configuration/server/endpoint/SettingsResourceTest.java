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
package net.kebernet.configuration.server.endpoint;

import net.kebernet.configuration.client.model.Group;
import net.kebernet.configuration.client.model.SettingValue;
import net.kebernet.configuration.client.model.Settings;
import net.kebernet.configuration.server.ConfigWriter;
import net.kebernet.configuration.server.model.ConfigurationGroup;
import net.kebernet.configuration.server.model.ConfigurationGroupRepository;
import net.kebernet.configuration.server.model.SettingValueRepository;
import org.junit.Test;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@SuppressWarnings("unchecked")
public class SettingsResourceTest {
    @Test
    public void testValuesPost() throws Exception {

        ConfigurationGroupRepository groupRepository = mock(ConfigurationGroupRepository.class);
        SettingValueRepository settingValueRepository = mock(SettingValueRepository.class);
        ConfigWriter writer = mock(ConfigWriter.class);

        Group group = new Group();
        group.setName("test");
        ConfigurationGroup configurationGroup = new ConfigurationGroup();
        configurationGroup.setSettingsGroup(group);
        configurationGroup.setName("test");

        List<ConfigurationGroup> groupList = Collections.singletonList(configurationGroup);

        when(groupRepository.findGroupsNeedingExecutionForChanges(any(List.class)))
                .thenReturn(groupList);

        SettingValue value = new SettingValue("name", "value");
        SettingValue value2 = new SettingValue("name2", "value2");
        List<SettingValue> allValues = Arrays.asList(value, value2);

        when(settingValueRepository.getValues()).thenReturn(allValues);

        SettingsResource settingsResource = new SettingsResource(groupRepository, settingValueRepository, writer);
        List<SettingValue> valueList = Collections.singletonList(value);
        settingsResource.values(valueList);

        verify(groupRepository).findGroupsNeedingExecutionForChanges(valueList);
        verify(writer).executeApplyGroups(groupList, allValues);
    }

    @Test
    public void testValuesGet() throws IOException {
        ConfigurationGroupRepository groupRepository = mock(ConfigurationGroupRepository.class);
        SettingValueRepository settingValueRepository = mock(SettingValueRepository.class);
        ConfigWriter writer = mock(ConfigWriter.class);

        SettingValue value = new SettingValue("name", "value");
        SettingValue value2 = new SettingValue("name2", "value2");
        List<SettingValue> allValues = Arrays.asList(value, value2);

        when(settingValueRepository.getValues()).thenReturn(allValues);
        SettingsResource settingsResource = new SettingsResource(groupRepository, settingValueRepository, writer);

        assertEquals(allValues, settingsResource.values());

        when(settingValueRepository.load()).thenReturn(true);

        assertEquals(allValues, settingsResource.values());

    }

    @Test
    public void testGroupsGet() throws IOException {
        ConfigurationGroupRepository groupRepository = mock(ConfigurationGroupRepository.class);
        SettingValueRepository settingValueRepository = mock(SettingValueRepository.class);
        ConfigWriter writer = mock(ConfigWriter.class);

        ConfigurationGroup group1 = new ConfigurationGroup();
        group1.setName("group1");
        group1.setSettingsGroup(new Group());
        group1.getSettingsGroup().setName("group1");

        ConfigurationGroup group2 = new ConfigurationGroup();
        group2.setName("group2");
        group2.setSettingsGroup(new Group());
        group2.getSettingsGroup().setName("group2");

        when(groupRepository.getGroups()).thenReturn(Arrays.asList(group1, group2));
        when(settingValueRepository.findValue(eq("host_description"), any()))
                .thenReturn("The description.");

        SettingsResource settingsResource = new SettingsResource(groupRepository, settingValueRepository, writer);


        Settings settings = settingsResource.findSettings();
        assertEquals("The description.", settings.getDescription());
        assertEquals("group1", settings.getGroups().get(0).getName());
        assertEquals("group2", settings.getGroups().get(1).getName());

        when(groupRepository.load()).thenReturn(true);

        settings = settingsResource.findSettings();
        assertEquals("The description.", settings.getDescription());
        assertEquals("group1", settings.getGroups().get(0).getName());
        assertEquals("group2", settings.getGroups().get(1).getName());

    }



}