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

import net.kebernet.configuration.client.model.Device;
import net.kebernet.configuration.client.model.Settings;
import net.kebernet.configuration.client.model.SettingsValue;
import net.kebernet.configuration.client.service.DeviceSettings;

import javax.inject.Inject;
import javax.inject.Singleton;
import javax.swing.*;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by rcooper on 7/11/17.
 */
@Singleton
public class DeviceSettingsPresenter implements DeviceSettingsView.SaveCallback, DeviceSettingsView.SettingsChangedCallback {

    private final DeviceSettingsView view;
    private final DeviceSettings service;
    private Settings settings;
    private List<SettingsValue> values;
    private AtomicInteger responseCount = new AtomicInteger();
    private AppFlow appFlow;

    @Inject
    public DeviceSettingsPresenter(DeviceSettingsView view, DeviceSettings service) {
        this.view = view;
        this.service = service;
    }

    public void bind(AppFlow flow, Device device){
        this.appFlow = flow;
        view.setDeviceName(device.getName());
        view.setSettingChangedCallback(this);
        view.showLoading();
        service.listSettings(device.getSettingsUrl(), (settings)->{
            this.settings = settings;
            if(responseCount.incrementAndGet() == 2) {
                render();
            }
        });
        service.listValues(device.getSettingsValuesUrl(),  (values)->{
            this.values = values;
            if (responseCount.incrementAndGet() == 2) {
                render();
            }
        });
    }

    public void unBind(){
        view.setSaveCallback(null);
        view.setSettingChangedCallback(null);
    }

    private void render(){
        view.hideLoading();
        view.setSettings(this.settings, values);
    }

    @Override
    public void onSaveClicked() {

    }

    @Override
    public void onSettingChanged(String name, String value) {
        view.setSaveCallback(this);
    }

    public DeviceSettingsView getView(){
        return this.view;
    }
}
