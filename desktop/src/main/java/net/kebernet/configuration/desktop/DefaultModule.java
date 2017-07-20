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
import net.kebernet.configuration.client.impl.HttpClient;
import net.kebernet.configuration.client.impl.HttpDeviceSettings;
import net.kebernet.configuration.client.impl.MulticastDNSDevices;
import net.kebernet.configuration.client.service.CompositeDiscoveryService;
import net.kebernet.configuration.client.service.DiscoveryService;
import net.kebernet.configuration.client.service.SettingsService;

import javax.inject.Singleton;
import java.security.KeyStore;

/**
 * Dagger Module.
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
    public KeyStore factory(){
        return null;
    }

    @Provides
    @Singleton
    public DiscoveryService devices(HttpClient client){
        return new CompositeDiscoveryService(new MulticastDNSDevices(client), new SerialPortDevices());
    }

    @Provides
    @Singleton
    public SettingsService settings(HttpClient client){
        return new HttpDeviceSettings(client);
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
