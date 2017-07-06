package net.kebernet.configuration.client.service;

import net.kebernet.configuration.client.model.Settings;

import java.util.Arrays;
import java.util.List;

/**
 * Created by rcooper on 7/6/17.
 */
public class CompositeDeviceSettings implements DeviceSettings {

    private final List<DeviceSettings> internal;

    public CompositeDeviceSettings(DeviceSettings... internal) {
        this.internal = Arrays.asList(internal);
    }

    @Override
    public boolean canResolve(String settingsAddress) {
        return internal.stream().anyMatch(f -> f.canResolve(settingsAddress));
    }

    @Override
    public void listSettings(String settingsAddress, SettingsCallback callback) {
        internal.stream()
                .filter(i -> i.canResolve(settingsAddress))
                .findFirst()
                .ifPresent(i -> i.listSettings(settingsAddress, callback));
    }

    @Override
    public void saveSettings(String settingsAddress, Settings settings, SaveCallback callback) {

    }
}
