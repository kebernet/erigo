package net.kebernet.configuration.desktop;

import net.kebernet.configuration.client.app.AppFlow;
import net.kebernet.configuration.client.app.DeviceListPresenter;
import net.kebernet.configuration.client.app.DeviceListView;
import net.kebernet.configuration.client.model.Device;

import javax.inject.Inject;
import javax.inject.Singleton;
import javax.swing.*;

/**
 * Created by rcooper on 7/11/17.
 */
@Singleton
public class AppFlowImpl implements AppFlow {

    private final DeviceListViewImpl deviceListViewImpl;
    private final JFrame frame;
    private final DeviceListPresenter presenter;

    @Inject
    public AppFlowImpl(DeviceListView deviceListView, DeviceListPresenter presenter){
        this.deviceListViewImpl = (DeviceListViewImpl) deviceListView;
        this.presenter = presenter;
        this.frame = new JFrame("Erigo");
        SwingUtilities.invokeLater(() -> {
            try {
                frame.setTitle("Erigo");
                frame.setSize(640, 480);
                frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                frame.setVisible(true);
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Substance Graphite failed to initialize");
            }
        });
    }

    @Override
    public void showDeviceList() {
        SwingUtilities.invokeLater(()->{
            frame.setContentPane(deviceListViewImpl.root);
            presenter.bind();
        });

    }

    @Override
    public void showDevice(Device device) {

    }
}
