package net.kebernet.configuration.desktop;

import dagger.Module;
import dagger.Provides;
import net.kebernet.configuration.client.app.DeviceListPresenter;
import net.kebernet.configuration.client.app.DeviceListView;
import net.kebernet.configuration.client.impl.MulticastDNSDevices;
import net.kebernet.configuration.client.impl.SerialPortDevices;
import net.kebernet.configuration.client.service.CompositeDevices;
import net.kebernet.configuration.client.service.Devices;

/**
 * Created by rcooper on 7/7/17.
 */
@Module(
        injects = DeviceListPresenter.class
)
public class DefaultModule {

    @Provides
    public Devices devices(){
        return new CompositeDevices(new MulticastDNSDevices(), new SerialPortDevices());

    }

    @Provides
    public DeviceListView listView(){
        return new DeviceListViewImpl();
    }
}
