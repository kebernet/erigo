package net.kebernet.configuration.client.app;

import net.kebernet.configuration.client.model.Device;

import java.util.List;

/**
 * Created by rcooper on 7/3/17.
 */
public interface DeviceListView {

    void showDeviceList(List<Device> devices);

    void addDevicesToList(List<Device> devices);

    void setDeviceSelectionCallback(DeviceSelectionCallback callback);

    void setRefreshClicked(RefreshCallback callback);

    interface DeviceSelectionCallback {
        void onDeviceSelected(Device device);
    }

    interface RefreshCallback {
        void onRefreshClicked();
    }
}
