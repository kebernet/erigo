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

import net.kebernet.configuration.client.model.SettingValue;

import java.util.Arrays;
import java.util.List;

/**
 * Created by rcooper on 7/6/17.
 */
public class CompositeSettingsService implements SettingsService {

    private final List<SettingsService> internal;

    public CompositeSettingsService(SettingsService... internal) {
        this.internal = Arrays.asList(internal);
    }

    @Override
    public boolean canResolve(String settingsAddress) {
        return internal.stream().anyMatch(f -> f.canResolve(settingsAddress));
    }

    @Override
    public void listSettings(String settingsAddress, SettingsCallback callback) {
        internal.stream()
                .filter(i -> i.canResolve(settingsAddress))
                .findFirst()
                .ifPresent(i -> i.listSettings(settingsAddress, callback));
    }

    @Override
    public void listValues(String valuesUrl, ValuesCallback callback) {
        internal.stream()
                .filter(s-> s.canResolve(valuesUrl))
                .findFirst()
                .ifPresent(s-> s.listValues(valuesUrl, callback));
    }

    @Override
    public void saveSettings(String valuesAddress, List<SettingValue> values, SaveCallback callback) {
        internal.stream()
                .filter(s-> s.canResolve(valuesAddress))
                .findFirst()
                .ifPresent(s-> s.saveSettings(valuesAddress, values, callback));
    }

}
