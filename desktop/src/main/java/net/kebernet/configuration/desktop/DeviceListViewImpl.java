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

import com.intellij.uiDesigner.core.GridConstraints;
import com.intellij.uiDesigner.core.GridLayoutManager;
import com.intellij.uiDesigner.core.Spacer;
import net.kebernet.configuration.client.app.DeviceListView;
import net.kebernet.configuration.client.model.Device;

import javax.annotation.Nonnull;
import javax.inject.Singleton;
import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/3/17.
 */
@Singleton
public class DeviceListViewImpl implements DeviceListView {
    private static final Logger LOGGER = Logger.getLogger(DeviceListViewImpl.class.getCanonicalName());
    JPanel root;
    private JPanel devicePanel;
    private JLabel devicesLabel;
    private JButton refreshButton;
    private JScrollPane scrollPane;
    private Set<Device> devices = Collections.synchronizedSet(new LinkedHashSet<Device>());
    private RefreshCallback refreshCallback;
    private DeviceSelectionCallback deviceSelected;

    DeviceListViewImpl() {
        devicePanel.setLayout(new BoxLayout(devicePanel, BoxLayout.Y_AXIS));
        refreshButton.addActionListener((e) -> {
            if (refreshCallback != null) {
                refreshCallback.onRefreshClicked();
            }
        });
    }

    @Override
    public synchronized void showDeviceList(@Nonnull List<Device> devices) {
        SwingUtilities.invokeLater(() -> {
            this.devices.addAll(devices);
            render();
        });

    }

    @Override
    public synchronized void addDevicesToList(@Nonnull List<Device> devices) {
        SwingUtilities.invokeLater(() -> {
            LOGGER.info("Got devices " + devices);
            this.devices.addAll(devices);
            render();
        });
    }

    private void render() {
        devicePanel.removeAll();
        for (Device d : devices) {
            DeviceListItem item = new DeviceListItem(d);
            Color bg = item.root.getBackground();

            item.root.addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e) {
                    if (deviceSelected != null) {
                        deviceSelected.onDeviceSelected(d);
                    }
                }

                @Override
                public void mousePressed(MouseEvent e) {
                    item.root.setBackground(Color.DARK_GRAY);
                }

                @Override
                public void mouseReleased(MouseEvent e) {
                    item.root.setBackground(bg);
                }
            });
            devicePanel.add(item.root);
        }
        devicePanel.revalidate();
        devicePanel.repaint();
    }

    @Override
    public void setDeviceSelectionCallback(DeviceSelectionCallback callback) {
        this.deviceSelected = callback;
    }

    @Override
    public void setRefreshClicked(RefreshCallback callback) {
        this.refreshCallback = callback;
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("DeviceListViewImpl");
        DeviceListViewImpl impl = new DeviceListViewImpl();
        frame.setContentPane(impl.root);
        frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        frame.setSize(640, 480);
        frame.setVisible(true);
    }


    {
// GUI initializer generated by IntelliJ IDEA GUI Designer
// >>> IMPORTANT!! <<<
// DO NOT EDIT OR ADD ANY CODE HERE!
        $$$setupUI$$$();
    }

    /**
     * Method generated by IntelliJ IDEA GUI Designer
     * >>> IMPORTANT!! <<<
     * DO NOT edit this method OR call it in your code!
     *
     * @noinspection ALL
     */
    private void $$$setupUI$$$() {
        root = new JPanel();
        root.setLayout(new GridLayoutManager(2, 3, new Insets(8, 8, 8, 8), -1, -1));
        scrollPane = new JScrollPane();
        root.add(scrollPane, new GridConstraints(1, 0, 1, 3, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_WANT_GROW, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_WANT_GROW, null, null, null, 0, false));
        devicePanel = new JPanel();
        devicePanel.setLayout(new GridLayoutManager(1, 1, new Insets(8, 8, 8, 8), -1, -1));
        scrollPane.setViewportView(devicePanel);
        refreshButton = new JButton();
        refreshButton.setText("Refresh");
        root.add(refreshButton, new GridConstraints(0, 2, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));
        final Spacer spacer1 = new Spacer();
        root.add(spacer1, new GridConstraints(0, 1, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_WANT_GROW, 1, null, null, null, 0, false));
        devicesLabel = new JLabel();
        devicesLabel.setText("Devices");
        root.add(devicesLabel, new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED, GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));
    }

    /**
     * @noinspection ALL
     */
    public JComponent $$$getRootComponent$$$() {
        return root;
    }
}
