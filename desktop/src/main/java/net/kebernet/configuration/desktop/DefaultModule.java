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

import javax.inject.Inject;
import javax.inject.Singleton;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.logging.Level;
import java.util.logging.Logger;

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

    private static final Logger LOGGER = Logger.getLogger(DefaultModule.class.getCanonicalName());

    @Provides
    @Singleton
    public KeyStore factory(){
        try {
            KeyStore ks =  KeyStore.getInstance(KeyStore.getDefaultType());
            ks.load(null, null);
            return ks;
        } catch (IOException | CertificateException | NoSuchAlgorithmException |KeyStoreException e) {
            LOGGER.log(Level.SEVERE, "Failed to create keystore.", e);
            return null;
        }
    }

    @Provides
    @Singleton
    public HttpClient.AuthenticationCallback authenticationCallback(){
        return new BasicLoginDialog();
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
