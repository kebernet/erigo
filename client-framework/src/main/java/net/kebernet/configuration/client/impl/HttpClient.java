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
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;

import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Base64;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * This is a simple HTTP client built on java.io for x-plat availability.
 */
@SuppressWarnings("WeakerAccess")
public class HttpClient {
    public static final String AUTHENTICATION_HEADER = "Authentication";
    private static final ExecutorService DEFAULT_EXECUTOR = Executors.newWorkStealingPool();
    private static final Logger LOGGER = Logger.getLogger(HttpClient.class.getCanonicalName());
    private static final ConcurrentHashMap<String, String> PERMANENT_REDIRECTS = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, AuthenticationToken> TOKEN_MAP = new ConcurrentHashMap<>();
    private AuthenticationCallback authenticationCallback;
    private ErrorCallback errorCallback;

    /**
     * Parses URI and generates a key for token caching
     *
     * @param url URL to parse
     * @return the String for the TOKEN_MAP.
     */
    private static String urlToKey(String url) {
        try {
            return uriToKey(new URI(url));
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Generates a key for token caching from a URI
     *
     * @param uri URI to read.
     * @return the String for the TOKEN_MAP.
     */
    public static String uriToKey(URI uri) {
        return new StringBuilder(uri.getScheme())
                .append("::")
                .append(uri.getHost())
                .append("::")
                .append(uri.getPort()).toString();
    }

    /**
     * Makes a get request.
     *
     * @param url      The URL to hit.
     * @param callback A callback with the result.
     */
    public void getToStream(String url, Consumer<InputStreamReader> callback) {
        getToStream(url, null, callback);
    }

    public void getToStream(String url, AuthenticationToken authenticationToken, Consumer<InputStreamReader> callback) {
        try {
            final URL u = new URL(PERMANENT_REDIRECTS.getOrDefault(url, url));
            AuthenticationToken token = TOKEN_MAP.getOrDefault(uriToKey(u.toURI()), authenticationToken);
            DEFAULT_EXECUTOR.submit(() -> {
                try {
                    HttpURLConnection connection = (HttpURLConnection) u.openConnection();
                    connection.setInstanceFollowRedirects(false);
                    if (token != null) {
                        connection.setRequestProperty(AUTHENTICATION_HEADER,
                                new StringBuilder(token.getScheme())
                                        .append(' ')
                                        .append(token.getValue())
                                        .toString()
                        );
                    }
                    connection.setUseCaches(false);
                    switch (connection.getResponseCode()) {
                        case 200:
                            break;
                        case 301:
                            PERMANENT_REDIRECTS.put(url, connection.getHeaderField("Location"));
                        case 302:
                        case 303:
                            getToStream(connection.getHeaderField("Location"), token, callback);
                            return;
                        case 403:
                            requestAuthorization(url, token, callback);
                            return;
                        default:
                            throw new IOException("Unexpected response code " + connection.getResponseCode() + " from " + url);
                    }
                    callback.accept(new InputStreamReader(connection.getInputStream(), Charsets.UTF_8));

                } catch (IOException e) {
                    LOGGER.log(Level.WARNING, "Failed to fetch " + url, e);
                }
            });

        } catch (URISyntaxException | MalformedURLException e) {
            LOGGER.log(Level.WARNING, "Failed to parse " + url, e);
            maybeSendError(String.format("Unknown URL: %s", url));
        }
    }

    /**
     * Sets the user input auth callback.
     *
     * @param callback A callback that will queried for authentication tokens
     */
    public void setAuthenticationCallback(AuthenticationCallback callback) {
        this.authenticationCallback = callback;
    }

    /**
     * Sets a callback for user presented errors that might happen.
     *
     * @param callback The callback for the message.
     */
    public void setErrorCallback(ErrorCallback callback) {
        this.errorCallback = callback;
    }

    private void maybeSendError(String message) {
        if (errorCallback != null) {
            errorCallback.onError(message);
        }
    }

    private void requestAuthorization(String url, AuthenticationToken token, Consumer<InputStreamReader> callback) throws IOException {
        if (this.authenticationCallback == null) {
            String error = String.format("The following URL requires authentication, but there is no handler: %s", url);
            maybeSendError(error);
            throw new IOException(String.format("The following URL requires authentication, but there is no handler: %s", url));
        }
        new NoRetryAuthenticationCallback(this.authenticationCallback).authenticationRequired(url, token, (authenticationToken) -> {
            if (authenticationToken == null) {
                throw new RuntimeException("Didn't get authentication token!");
            }
            try {
                TOKEN_MAP.put(urlToKey(url), authenticationToken);
                this.getToStream(url, authenticationToken, callback);
            } catch (Exception e) {
                LOGGER.log(Level.SEVERE, null, e);
            }
        });
    }

    /**
     * A callback
     */
    public interface AuthenticationCallback {
        void authenticationRequired(String url, AuthenticationToken previousToken, Consumer<AuthenticationToken> callback);
    }

    /**
     * An authentication token based on the token header, a scheme and a value.
     */
    public interface AuthenticationToken {
        /**
         * A scheme, like "Basic" or "Bearer"
         *
         * @return The scheme
         */
        String getScheme();

        /**
         * A value for the header.
         *
         * @return The value to return.
         */
        String getValue();
    }

    public interface ErrorCallback {
        void onError(String errorMessage);
    }

    /**
     * An authentication token based on username and password.
     */
    public static class BasicAuthenticationToken implements AuthenticationToken {
        private final String username;
        private final String password;

        public BasicAuthenticationToken(String username, String password) {
            this.username = username;
            this.password = password;
        }


        @Override
        public String getScheme() {
            return "Basic";
        }

        @Override
        public String getValue() {
            return Base64.getEncoder().encodeToString(
                    new StringBuilder(username)
                            .append(':')
                            .append(password)
                            .toString()
                            .getBytes(Charsets.UTF_8)
            );
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof BasicAuthenticationToken)) return false;
            BasicAuthenticationToken that = (BasicAuthenticationToken) o;
            return Objects.equal(username, that.username) &&
                    Objects.equal(password, that.password);
        }

        @Override
        public int hashCode() {
            return Objects.hashCode(username, password);
        }

        @Override
        public String toString() {
            return MoreObjects.toStringHelper(this)
                    .add("username", username)
                    .add("password", password)
                    .toString();
        }
    }

    /**
     * An authentication token based on a bearer token.
     */
    public static class BearerAuthenticationToken implements AuthenticationToken {

        private final String token;

        public BearerAuthenticationToken(String token) {
            this.token = token;
        }

        @Override
        public String getScheme() {
            return "Bearer";
        }

        @Override
        public String getValue() {
            return token;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof BearerAuthenticationToken)) return false;
            BearerAuthenticationToken that = (BearerAuthenticationToken) o;
            return Objects.equal(token, that.token);
        }

        @Override
        public int hashCode() {
            return Objects.hashCode(token);
        }

        @Override
        public String toString() {
            return MoreObjects.toStringHelper(this)
                    .add("token", token)
                    .toString();
        }
    }

    private class NoRetryAuthenticationCallback implements AuthenticationCallback {

        private final AuthenticationCallback wrapped;

        public NoRetryAuthenticationCallback(AuthenticationCallback wrapped) {
            this.wrapped = wrapped;
        }

        @Override
        public void authenticationRequired(String url, AuthenticationToken previousToken, Consumer<AuthenticationToken> callback) {
            wrapped.authenticationRequired(url, previousToken, (nextToken) -> {
                if (Objects.equal(nextToken, previousToken)) {
                    maybeSendError(String.format("Couldn't authenticate with %s", url));
                } else {
                    callback.accept(nextToken);
                }
            });
        }
    }
}
