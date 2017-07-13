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
import net.kebernet.configuration.client.service.DiscoveryService;

import javax.annotation.Nonnull;
import javax.inject.Inject;
import javax.inject.Singleton;
import java.util.LinkedHashSet;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/3/17.
 */
@Singleton
public class DeviceListPresenter implements DeviceListView.RefreshCallback, DeviceListView.DeviceSelectionCallback {
    private static final Logger LOGGER = Logger.getLogger(DeviceListPresenter.class.getCanonicalName());
    private final DeviceListView view;
    private final DiscoveryService service;
    private AppFlow appFlow;

    private final LinkedHashSet<Device> knownDevices = new LinkedHashSet<>();
    private boolean isShutdown;


    @Inject
    public DeviceListPresenter(@Nonnull DeviceListView view, @Nonnull DiscoveryService service) {
        this.view = view;
        this.service = service;
    }

    public void bind(@Nonnull AppFlow flow) {
        this.appFlow = flow;
        isShutdown = false;
        view.setDeviceSelectionCallback(this);
        view.setRefreshClicked(this);
        service.listKnownDevices(devices -> {
            knownDevices.addAll(devices);
            view.showDeviceList(devices);
            return false;
        });
        service.listenForDevices(devices -> {
            view.addDevicesToList(devices);
            knownDevices.addAll(devices);
            return isShutdown;
        });
        service.refresh();
    }

    public void unbind(){
        view.setDeviceSelectionCallback(null);
        view.setRefreshClicked(null);
        isShutdown = true;
    }

    @Override
    public void onDeviceSelected(Device device) {
        LOGGER.info("Device selected "+device);
        appFlow.showDevice(device);
    }


    @Override
    public void onRefreshClicked() {
        knownDevices.clear();
        service.refresh();
    }

    public DeviceListView getView(){
        return this.view;
    }
}
