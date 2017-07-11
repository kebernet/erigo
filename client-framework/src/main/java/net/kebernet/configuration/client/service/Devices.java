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
     * @param callback Callback for current known devices
     */
    void listKnownDevices(DeviceListCallback callback);

    /**
     * Sets an error callback. This will provide messages that can be presented to the user
     * when an error occurs inside the Devices service.
     * @param callback ErrorCallback
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
