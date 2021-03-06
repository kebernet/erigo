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
import net.kebernet.configuration.client.model.SettingValue;
import net.kebernet.configuration.client.service.SettingsService;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import javax.inject.Inject;
import javax.inject.Singleton;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by rcooper on 7/11/17.
 */
@Singleton
public class DeviceSettingsPresenter implements DeviceSettingsView.SaveCallback, DeviceSettingsView.SettingsChangedCallback, DeviceSettingsView.CancelCallback {

    private final DeviceSettingsView view;
    private final SettingsService service;
    private Settings settings;
    private List<SettingValue> values;
    private AtomicInteger responseCount = new AtomicInteger();
    private AppFlow appFlow;
    private List<SettingValue> toSave = new CopyOnWriteArrayList<>();
    private Device device;

    @Inject
    public DeviceSettingsPresenter(@Nonnull DeviceSettingsView view,
                                   @Nonnull SettingsService service) {
        this.view = view;
        this.service = service;
    }

    public void bind(@Nonnull AppFlow flow, @Nonnull Device device){
        this.appFlow = flow;
        this.device = device;
        view.setDeviceName(device.getName());
        view.setSettingChangedCallback(this);
        view.setCancelCallback(this);
        view.showLoading();
        service.listSettings(device.getName(), device.getSettingsUrl(), (settings)->{
            this.settings = settings;
            service.listValues(device.getName(), device.getSettingsValuesUrl(),  (values)->{
                this.values = values;
                    view.hideLoading();
                    render();
            });

        });

    }

    public void unBind(){
        view.setSaveCallback(null);
        view.setSettingChangedCallback(null);
        view.setCancelCallback(null);
        this.responseCount.set(0);
        this.settings = null;
        this.values = null;
    }

    private void render(){
        view.hideLoading();
        view.setSettings(this.settings, values);
    }

    @Override
    public void onSaveClicked() {
        ArrayList<SettingValue> toSend = new ArrayList<>(toSave);
        toSave.removeAll(toSend);

        service.saveSettings(this.device.getName(), this.device.getSettingsValuesUrl(), toSend, (didSave)->{
            if(didSave){
                appFlow.showDeviceList();
            } else {
                view.showError("Failed to save settings.");
            }
        });
    }

    @Override
    public void onSettingChanged(@Nonnull String name, @Nullable String value) {
        view.setSaveCallback(this); // enable save operation after change.
        toSave.add(new SettingValue(name, value));
    }

    public DeviceSettingsView getView(){
        return this.view;
    }

    @Override
    public void onCancelClicked() {
        appFlow.showDeviceList();
    }
}
