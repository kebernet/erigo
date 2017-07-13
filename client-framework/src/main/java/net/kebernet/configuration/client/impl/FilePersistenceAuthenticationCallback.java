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
package net.kebernet.configuration.client.impl;


import com.google.common.base.Charsets;
import com.google.common.base.Objects;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Date;
import java.util.Optional;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * This is a wrapper for AuthenticationCallback that will use a local properties file to store creds by
 * scheme host and port.
 */
@SuppressWarnings("WeakerAccess")
public class FilePersistenceAuthenticationCallback implements HttpClient.AuthenticationCallback {
    private final Logger LOGGER = Logger.getLogger(FilePersistenceAuthenticationCallback.class.getCanonicalName());
    private final Properties properties = new Properties();
    private final HttpClient.AuthenticationCallback nestedCallback;
    private final File propertiesFile;

    /**
     * A new constructor
     * @param propertiesFile The props file to (maybe) read from
     * @param nestedCallback the callback to wrap with persistence.
     * @throws IOException That is a thing that might happen.
     */
    public FilePersistenceAuthenticationCallback(@Nonnull File propertiesFile, @Nonnull HttpClient.AuthenticationCallback nestedCallback) throws IOException {
        this.nestedCallback = nestedCallback;
        this.propertiesFile = propertiesFile;
        if(!propertiesFile.getParentFile().exists() && !propertiesFile.getParentFile().mkdirs()){
            LOGGER.warning("Didn't create "+propertiesFile.getParentFile().getAbsolutePath());
        }
        if(propertiesFile.exists()) {
            syncExecute(()->{
                try (Reader r = new InputStreamReader(new FileInputStream(propertiesFile), Charsets.UTF_8)) {
                    properties.load(r);
                }
                return null;
            });
        }
    }

    /**
     * A synchronized static method to execute IO within.
     * @param r Callable to execute.
     * @return Result of the callable.
     * @throws IOException The only thrown checked exception. All others become runtime.
     */
    @Nullable
    private static synchronized <T> T syncExecute(@Nonnull Callable<T> r) throws IOException {
        try {
            return r.call();
        } catch (IOException e) {
            throw e;
        } catch(Exception e){
            throw new RuntimeException(e);
        }
    }

    /**
     * Save the current list of tokens.
     * @throws IOException A thing that might happen.
     */
    private void save() throws IOException {
        FilePersistenceAuthenticationCallback.syncExecute(()->{
            try(Writer w = new OutputStreamWriter(new FileOutputStream(this.propertiesFile), Charsets.UTF_8)){
                properties.store(w, "Saved at " + new Date());
            }
            return null;
        });
    }

    /**
     * Read a key from persistent storage.
     * @param key The key to read
     * @return an optional that might have a PersistedAuthenticatedToken in it.
     */
    @Nonnull
    private Optional<PersistedAuthenticationToken> read(@Nonnull String key){
        if(properties.getProperty(key) == null){
            return Optional.empty();
        } else {
            return Optional.of(new PersistedAuthenticationToken(key, properties.getProperty(key)));
        }
    }

    /**
     * Save a token
     * @param token The token to save.
     * @throws IOException Thrown if we couldn't save it.
     */
    private void persist(@Nonnull PersistedAuthenticationToken token) throws IOException {
        properties.put(token.key, token.toString());
        save();
    }

    /**
     * Woot. The URL that this whole mofo wraps
     * @param url The URL to look up.
     * @param previousToken The previous token the HttpClient tried.
     * @param callback A callback with the new token.
     */
    @Override
    public void authenticationRequired(@Nonnull String url, @Nullable HttpClient.AuthenticationToken previousToken, @Nonnull Consumer<HttpClient.AuthenticationToken> callback) {
        try {
            // If we have a previous token, that means it failed to auth, so let's delete it.
            if(previousToken != null){
                if(previousToken instanceof PersistedAuthenticationToken){
                    PersistedAuthenticationToken delete = (PersistedAuthenticationToken) previousToken;
                    this.properties.remove(delete.key);
                    save();
                }
            }
            URI uri = new URI(url);
            String key = HttpClient.uriToKey(uri);

            if(previousToken == null){
                // If we don't have a previous token, check for one in the repo.
                Optional<PersistedAuthenticationToken> read = read(key);
                if(read.isPresent()){
                    callback.accept(read.get());
                    return;
                }
            }

            // So we are down here. Let's ask the downstream callback for a token then persist it.
            nestedCallback.authenticationRequired(url,
                    previousToken instanceof PersistedAuthenticationToken ? null : previousToken,
                    (authenticationToken) -> {
                        try {
                            persist(new PersistedAuthenticationToken(key, authenticationToken.getScheme() +" "+authenticationToken.getValue()));
                        } catch (IOException e) {
                            LOGGER.log(Level.SEVERE, "Failed to save token: "+authenticationToken, e);
                        }
                        // We want to NOT pass the Persisted token back to the callback. If the auth fails, we want the
                        // original token callback to get it's previous token back to maybe re-populate UI.
                        callback.accept(authenticationToken);
                    }
            );


        } catch (URISyntaxException e) {
            LOGGER.log(Level.WARNING, "Failed to parse uri "+url, e);
        } catch (IOException e) {
            LOGGER.log(Level.SEVERE, "Failed to save "+propertiesFile, e);
        }
    }

    /**
     * A class for auth tokens that are saved to the props file.
     */
    static class PersistedAuthenticationToken implements HttpClient.AuthenticationToken {

        private final String key;
        private final String scheme;
        private final String value;

        private PersistedAuthenticationToken(String key, String headerLine) {
            this.key = key;
            int space = headerLine.indexOf(' ');
            scheme = headerLine.substring(0, space);
            value = headerLine.substring(space +1);
        }

        @Override
        public String getScheme() {
            return scheme;
        }

        @Override
        public String getValue() {
            return value;
        }

        @Override
        public String toString(){
            return new StringBuilder(getScheme()).append(' ').append(getValue()).toString();
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof PersistedAuthenticationToken)) return false;
            PersistedAuthenticationToken that = (PersistedAuthenticationToken) o;
            return Objects.equal(key, that.key) &&
                    Objects.equal(scheme, that.scheme) &&
                    Objects.equal(value, that.value);
        }

        @Override
        public int hashCode() {
            return Objects.hashCode(key, scheme, value);
        }
    }
}
