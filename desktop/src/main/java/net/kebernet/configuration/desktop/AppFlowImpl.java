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

import net.kebernet.configuration.client.app.AppFlow;
import net.kebernet.configuration.client.app.DeviceListPresenter;
import net.kebernet.configuration.client.app.DeviceListView;
import net.kebernet.configuration.client.app.DeviceSettingsPresenter;
import net.kebernet.configuration.client.model.Device;

import javax.inject.Inject;
import javax.inject.Singleton;
import javax.swing.*;

/**
 * Created by rcooper on 7/11/17.
 */
@Singleton
public class AppFlowImpl implements AppFlow {

    private final JFrame frame;
    private final DeviceListPresenter deviceListPresenter;
    private final DeviceSettingsPresenter deviceSettingsPresenter;

    @Inject
    public AppFlowImpl(DeviceListPresenter deviceListPresenter, DeviceSettingsPresenter deviceSettingsPresenter){
        this.deviceListPresenter = deviceListPresenter;
        this.deviceSettingsPresenter = deviceSettingsPresenter;
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
            deviceSettingsPresenter.unBind();
            frame.setContentPane(
                    ((DeviceListViewImpl) deviceListPresenter.getView()).root);
            deviceListPresenter.bind(this);
        });

    }

    @Override
    public void showDevice(Device device) {
        SwingUtilities.invokeLater(()->{
            deviceListPresenter.unbind();
            frame.setContentPane(
                    ((SettingsView) deviceSettingsPresenter.getView()).root
            );
            frame.revalidate();
            frame.repaint();
            deviceSettingsPresenter.bind(this, device);
        });
    }
}
