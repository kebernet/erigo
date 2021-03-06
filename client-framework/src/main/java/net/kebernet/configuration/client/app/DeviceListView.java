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

import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import java.util.List;

/**
 * Created by rcooper on 7/3/17.
 */
public interface DeviceListView {

    void showDeviceList(@Nonnull List<Device> devices);

    void addDevicesToList(@Nonnull List<Device> devices);

    void setDeviceSelectionCallback(@Nullable DeviceSelectionCallback callback);

    void setRefreshClicked(@Nullable RefreshCallback callback);

    interface DeviceSelectionCallback {
        void onDeviceSelected(@Nonnull Device device);
    }

    interface RefreshCallback {
        void onRefreshClicked();
    }
}
