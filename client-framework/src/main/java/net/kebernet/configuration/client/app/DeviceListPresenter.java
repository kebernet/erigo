package net.kebernet.configuration.client.app;

import net.kebernet.configuration.client.model.Device;
import net.kebernet.configuration.client.service.Devices;

import javax.inject.Inject;
import java.util.LinkedHashSet;

/**
 * Created by rcooper on 7/3/17.
 */
public class DeviceListPresenter implements DeviceListView.RefreshCallback, DeviceListView.DeviceSelectionCallback {

    private final DeviceListView view;
    private final Devices service;

    private final LinkedHashSet<Device> knownDevices = new LinkedHashSet<>();
    private boolean isShutdown;


    @Inject
    public DeviceListPresenter(DeviceListView view, Devices service) {
        this.view = view;
        this.service = service;
    }

    public void bind() {
        view.setDeviceSelectionCallback(this);
        view.setRefreshClicked(this);
        service.listKnownDevices(devices -> {
            view.showDeviceList(devices);
            return false;
        });
        service.listenForDevices(devices -> {
            view.addDevicesToList(devices);
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

    }

    @Override
    public void onRefreshClicked() {

    }
}
