package net.kebernet.configuration.client.impl;

import com.google.common.base.Charsets;
import com.google.common.collect.ImmutableSet;
import com.google.common.reflect.TypeToken;
import com.google.gson.Gson;
import net.kebernet.configuration.client.model.Settings;
import net.kebernet.configuration.client.model.SettingsValue;
import net.kebernet.configuration.client.service.DeviceSettings;

import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/12/17.
 */
public class HttpDeviceSettings implements DeviceSettings {
    private static final Type VALUES_LIST_TYPE = new TypeToken<List<SettingsValue>>() {
    }.getType();
    private static final Logger LOGGER = Logger.getLogger(HttpDeviceSettings.class.getCanonicalName());
    private static final ExecutorService DEFAULT_EXECUTOR = Executors.newWorkStealingPool();
    private static final Set<String> SCHEMES = ImmutableSet.of("http", "https");

    @Override
    public boolean canResolve(String settingsAddress) {
        try {
            return SCHEMES.contains(new URI(settingsAddress).getScheme().toLowerCase());
        } catch (URISyntaxException e) {
            return false;
        }
    }

    @Override
    public void listSettings(String settingsAddress, SettingsCallback callback) {
        fetchToStream(settingsAddress, (stream)->{
            callback.onSettingsResponse(new Gson().fromJson(stream, Settings.class));
        });
    }

    @Override
    public void listValues(String valuesUrl, ValuesCallback callback) {
        fetchToStream(valuesUrl, (stream)->{
            callback.onValuesResponse(new Gson().fromJson(stream, VALUES_LIST_TYPE));
        });
    }

    private void fetchToStream(String url, Consumer<InputStreamReader> callback){
        try {
            final URL u = new URL(url);
            DEFAULT_EXECUTOR.submit(() -> {
                try {
                    HttpURLConnection connection = (HttpURLConnection) u.openConnection();
                    if (connection.getResponseCode() != 200) {
                        throw new IOException("Unexpected response code " + connection.getResponseCode() + " from " + url);
                    }
                    callback.accept(new InputStreamReader(connection.getInputStream(), Charsets.UTF_8));

                } catch (IOException e) {
                    LOGGER.log(Level.WARNING, "Failed to fetch " + url, e);
                }
            });

        } catch (MalformedURLException e) {
            LOGGER.log(Level.WARNING, "Failed to parse " + url, e);
        }
    }

    @Override
    public void saveSettings(String valuesAddress, List<SettingsValue> values, SaveCallback callback) {

    }
}
