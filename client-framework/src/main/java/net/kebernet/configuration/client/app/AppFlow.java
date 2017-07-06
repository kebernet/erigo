package net.kebernet.configuration.client.app;

import net.kebernet.configuration.client.model.Device;

/**
 * Created by rcooper on 7/6/17.
 */
public interface AppFlow {

    void showDeviceList();
    void showDevice(Device device);
}
