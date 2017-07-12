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

import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
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
    private static final ExecutorService DEFAULT_EXECUTOR = Executors.newWorkStealingPool();
    private static final Logger LOGGER = Logger.getLogger(HttpClient.class.getCanonicalName());
    public static final String AUTHENTICATION_HEADER = "Authentication";
    private static final ConcurrentHashMap<String, String> PERMANENT_REDIRECTS = new ConcurrentHashMap<>();
    private AuthenticationCallback authenticationCallback;
    private ErrorCallback errorCallback;


    public void getToStream(String url, Consumer<InputStreamReader> callback){
        getToStream(url, null, callback);
    }

    public void getToStream(String url, AuthenticationToken token, Consumer<InputStreamReader> callback){
        try {
            final URL u = new URL(PERMANENT_REDIRECTS.getOrDefault(url, url));
            DEFAULT_EXECUTOR.submit(() -> {
                try {
                    HttpURLConnection connection = (HttpURLConnection) u.openConnection();
                    connection.setInstanceFollowRedirects(false);
                    if(token != null){
                        connection.setRequestProperty(AUTHENTICATION_HEADER,
                                new StringBuilder(token.getScheme())
                                        .append(' ')
                                        .append(token.getValue())
                                        .toString()
                        );
                    }
                    connection.setUseCaches(false);
                    switch(connection.getResponseCode()){
                        case 200: break;
                        case 301:
                            PERMANENT_REDIRECTS.put(url, connection.getHeaderField("Location"));
                        case 302:
                        case 303:
                            getToStream(connection.getHeaderField("Location"), callback);
                            return;
                        case 403:
                            if(this.authenticationCallback != null) {
                                requestAuthorization(url, token, callback);
                                return;
                            }
                        default:
                            throw new IOException("Unexpected response code " + connection.getResponseCode() + " from " + url);
                    }
                    callback.accept(new InputStreamReader(connection.getInputStream(), Charsets.UTF_8));

                } catch (IOException e) {
                    LOGGER.log(Level.WARNING, "Failed to fetch " + url, e);
                }
            });

        } catch (MalformedURLException e) {
            LOGGER.log(Level.WARNING, "Failed to parse " + url, e);
            maybeSendError(String.format("Unknown URL: %s", url));
        }
    }

    public void setAuthenticationCallback(AuthenticationCallback callback){
        this.authenticationCallback = callback;
    }

    public void setErrorCallback(ErrorCallback callback){
        this.errorCallback = callback;
    }

    private void maybeSendError(String message){
        if(errorCallback != null){
            errorCallback.onError(message);
        }
    }

    private void requestAuthorization(String url, AuthenticationToken token, Consumer<InputStreamReader> callback) throws IOException {
        if(this.authenticationCallback == null){
            String error = String.format("The following URL requires authentication, but there is no handler: %s", url);
            maybeSendError(error);
            throw new IOException(String.format("The following URL requires authentication, but there is no handler: %s", url));
        }
        new NoRetryAuthenticationCallback(this.authenticationCallback).authenticationRequired(url, token, authenticationToken -> {
            if(authenticationToken == null){
                throw new RuntimeException("Didn't get authentication token!");
            }
            this.getToStream(url, authenticationToken, callback);
        });
    }

    public interface AuthenticationCallback {
        void authenticationRequired(String url, AuthenticationToken previousToken, Consumer<AuthenticationToken> callback);
    }

    public interface AuthenticationToken {
        String getScheme();
        String getValue();
    }

    public static class BasicAuthenticationToken implements AuthenticationToken {
        private final String username;
        private final String password;

        public BasicAuthenticationToken(String username, String password) {
            this.username = username;
            this.password = password;
        }


        @Override
        public String getScheme(){
            return "Basic";
        }

        @Override
        public String getValue(){
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
    }

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
    }

    private class NoRetryAuthenticationCallback implements AuthenticationCallback {

        private final AuthenticationCallback wrapped;

        public NoRetryAuthenticationCallback(AuthenticationCallback wrapped) {
            this.wrapped = wrapped;
        }

        @Override
        public void authenticationRequired(String url, AuthenticationToken previousToken, Consumer<AuthenticationToken> callback) {
            wrapped.authenticationRequired(url, previousToken, (nextToken)->{
                maybeSendError(String.format("Couldn't authenticate with %s", url));
                callback.accept(Objects.equal(nextToken, previousToken) ? null : nextToken);
            });
        }
    }

    public interface ErrorCallback {
        void onError(String errorMessage);
    }
}
