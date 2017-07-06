package net.kebernet.configuration.client.service;

import net.kebernet.configuration.client.model.Device;

import java.util.List;

/**
 * Created by rcooper on 7/3/17.
 */
public interface Devices {

    /**
     * Adds a callback that will be notified whenever new devices are discovered.
     * This will always occur asyncronously.
     * @param callback Callback to receive notifications.
     */
    void listenForDevices(DeviceListCallback callback);

    /**
     * Lists the currently discovered devices.
     * This will always happen asyncronously.
     * @param callback
     */
    void listKnownDevices(DeviceListCallback callback);

    /**
     * Sets an error callback. This will provide messages that can be presented to the user
     * when an error occurs inside the Devices service.
     * @param callback
     */
    void setErrorCallback(ErrorCallback callback);

    /**
     * Refreshes/rediscovers devices. This will need to be called at startup.
     */
    void refresh();

    /**
     * A callback for device lists.
     */
    interface DeviceListCallback {
        /**
         * If this callback is being used as a listener
         * the return value will indicate if the listener should continue listening.
         * @param devices A list of recently discovered devices.
         * @return "true" if the listener should continue to listen for more discoveries, or
         *  "false" if it is completed.
         */
        boolean onDevices(List<Device> devices);
    }

    /**
     * A callback that can be used to present the user with error messages about the
     * internal state of the Devices services
     */
    interface ErrorCallback{
        /**
         * @param message Message to present to user
         */
        void onError(String message);
    }
}
