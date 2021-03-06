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
import net.kebernet.configuration.client.app.DeviceSettingsView;
import net.kebernet.configuration.client.model.Group;
import net.kebernet.configuration.client.model.SettingValue;
import net.kebernet.configuration.client.model.Settings;

import javax.annotation.Nonnull;
import javax.inject.Inject;
import javax.inject.Singleton;
import javax.swing.*;
import java.awt.*;
import java.util.Collection;
import java.util.HashMap;

/**
 * Created by rcooper on 7/11/17.
 */
@Singleton
public class SettingsView implements DeviceSettingsView, DeviceSettingsView.SettingsChangedCallback {
    private final SettingViewFactory factory;
    JPanel root;
    private JTabbedPane groupTabs;
    private JLabel deviceName;
    private JProgressBar loading;
    private JButton saveButton;
    private JButton cancelButton;
    private SaveCallback saveCallback;
    private SettingsChangedCallback settingsCallback;
    private CancelCallback cancelCallback;


    @Inject
    public SettingsView(SettingViewFactory factory) {
        this.factory = factory;
        this.saveButton.addActionListener((a) -> {
            if (this.saveCallback != null) {
                this.saveCallback.onSaveClicked();
            }
        });
        this.cancelButton.addActionListener((a) -> {
            if (this.cancelCallback != null) {
                cancelCallback.onCancelClicked();
            }
        });
    }

    @Override
    public void showLoading() {
        SwingUtilities.invokeLater(() -> loading.setVisible(true));
    }

    @Override
    public void hideLoading() {
        SwingUtilities.invokeLater(() -> loading.setVisible(false));

    }

    @Override
    public void setDeviceName(@Nonnull String name) {
        SwingUtilities.invokeLater(() -> {
            this.deviceName.setText(name);
            this.deviceName.revalidate();
        });
    }

    @Override
    public void setSettings(Settings settings, Collection<SettingValue> values) {
        SwingUtilities.invokeLater(() -> {
            groupTabs.removeAll();
            HashMap<String, String> vals = new HashMap<>();
            values.forEach(v -> vals.put(v.getName(), v.getValue()));
            for (Group g : settings.getGroups()) {
                GroupView view = new GroupView(factory, g, vals, this);
                groupTabs.addTab(g.getName(), view.root);
            }
            groupTabs.revalidate();
            groupTabs.repaint();
        });

    }

    @Override
    public void setSettingChangedCallback(SettingsChangedCallback callback) {
        this.settingsCallback = callback;
    }

    @Override
    public void setSaveCallback(SaveCallback callback) {
        this.saveButton.setEnabled(callback != null);
        this.saveCallback = callback;
    }

    @Override
    public void setCancelCallback(CancelCallback callback) {
        this.cancelCallback = callback;
    }

    @Override
    public void showError(String s) {

    }

    @Override
    public void onSettingChanged(@Nonnull String name, String value) {
        if (this.settingsCallback != null) {
            this.settingsCallback.onSettingChanged(name, value);
        }
    }


    public static void main(String[] args) {
        JFrame frame = new JFrame("SettingsView");
        frame.setContentPane(new SettingsView(new SettingViewFactory()).root);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
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
        root.setLayout(new GridLayoutManager(2, 6, new Insets(8, 8, 8, 8), -1, -1));
        groupTabs = new JTabbedPane();
        root.add(groupTabs, new GridConstraints(1, 0, 1, 6, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, new Dimension(200, 200), null, 0, false));
        deviceName = new JLabel();
        deviceName.setFont(new Font(deviceName.getFont().getName(), deviceName.getFont().getStyle(), deviceName.getFont().getSize()));
        deviceName.setText("Label");
        root.add(deviceName, new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED, GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));
        final Spacer spacer1 = new Spacer();
        root.add(spacer1, new GridConstraints(0, 1, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_WANT_GROW, 1, null, null, null, 0, false));
        saveButton = new JButton();
        saveButton.setEnabled(false);
        saveButton.setText("Save");
        root.add(saveButton, new GridConstraints(0, 4, 1, 2, GridConstraints.ANCHOR_SOUTH, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));
        loading = new JProgressBar();
        loading.setBorderPainted(true);
        loading.setEnabled(true);
        loading.setIndeterminate(true);
        loading.setValue(50);
        root.add(loading, new GridConstraints(0, 2, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_WANT_GROW, GridConstraints.SIZEPOLICY_FIXED, null, null, null, 1, false));
        cancelButton = new JButton();
        cancelButton.setText("Cancel");
        root.add(cancelButton, new GridConstraints(0, 3, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));
    }

    /**
     * @noinspection ALL
     */
    public JComponent $$$getRootComponent$$$() {
        return root;
    }
}
