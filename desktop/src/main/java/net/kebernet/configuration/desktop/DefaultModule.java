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
package net.kebernet.configuration.desktop;

import dagger.Module;
import dagger.Provides;
import net.kebernet.configuration.client.app.DeviceListView;
import net.kebernet.configuration.client.app.DeviceSettingsView;
import net.kebernet.configuration.client.impl.HttpDeviceSettings;
import net.kebernet.configuration.client.impl.MulticastDNSDevices;
import net.kebernet.configuration.client.service.CompositeDevices;
import net.kebernet.configuration.client.service.DeviceSettings;
import net.kebernet.configuration.client.service.Devices;

import javax.inject.Singleton;

/**
 * Created by rcooper on 7/7/17.
 */
@Module(
        injects = {
                AppFlowImpl.class
        }
)
public class DefaultModule {

    @Provides
    @Singleton
    public Devices devices(){
        return new CompositeDevices(new MulticastDNSDevices(), new SerialPortDevices());
    }

    @Provides
    @Singleton
    public DeviceSettings settings(){
        return new HttpDeviceSettings();
    }

    @Provides
    @Singleton
    public DeviceListView listView(){
        return new DeviceListViewImpl();
    }

    @Provides
    @Singleton
    public DeviceSettingsView settingsView(){
        return new SettingsView(new SettingViewFactory());
    }

}
