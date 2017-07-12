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

import com.google.common.io.CharStreams;
import com.google.common.util.concurrent.SettableFuture;
import org.junit.Test;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

import static org.junit.Assert.*;

/**
 * Created by rcooper on 7/13/17.
 */
public class HttpClientTest {


    @Test
    public void testSimpleGet() throws Exception {
        HttpClient client = new HttpClient();
        int port = MockServer.randomPort();
        MockServer mockServer = new MockServer(port);
        SettableFuture<String> result = SettableFuture.create();
        client.getToStream("http://localhost:"+port+"/hello", (reader)->{
            try {
                result.set(CharStreams.toString(reader));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });
        String read = result.get(1, TimeUnit.SECONDS);
        assertEquals("world", read);
        mockServer.stop();
    }

    @Test
    public void testRedirectedGet() throws Exception {
        HttpClient client = new HttpClient();
        int port = MockServer.randomPort();
        MockServer mockServer = new MockServer(port);
        SettableFuture<String> result = SettableFuture.create();
        client.getToStream("http://localhost:"+port+"/helloRedirected", (reader)->{
            try {
                result.set(CharStreams.toString(reader));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });
        String read = result.get(1, TimeUnit.SECONDS);
        assertEquals("world", read);
        mockServer.stop();
    }

    @Test
    public void testAuthenticatedGet() throws Exception {
        int port = MockServer.randomPort();
        String checkUrl = "http://localhost:"+port+"/authenticated";
        AtomicBoolean didAuth = new AtomicBoolean(false);
        HttpClient client = new HttpClient();
        client.setAuthenticationCallback((url, previousToken, callback) -> {
            assertEquals(checkUrl, url);
            assertNull(previousToken);
            didAuth.set(true);
            callback.accept(new HttpClient.BasicAuthenticationToken("user", "pass"));
        });

        MockServer mockServer = new MockServer(port);
        SettableFuture<String> result = SettableFuture.create();
        client.getToStream(checkUrl, (reader)->{
            try {
                result.set(CharStreams.toString(reader));
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        });
        String read = result.get(1, TimeUnit.SECONDS);
        assertEquals("authenticated", read);
        assertTrue(didAuth.get());
        mockServer.stop();
    }

    @Test(expected = TimeoutException.class)
    public void testFailedAuthenticatedGet() throws Exception {
        int port = MockServer.randomPort();
        String checkUrl = "http://localhost:"+port+"/authenticated";
        AtomicBoolean didAuth = new AtomicBoolean(false);
        AtomicReference<String> error = new AtomicReference<>(null);

        HttpClient client = new HttpClient();
        client.setErrorCallback(error::set);
        client.setAuthenticationCallback((url, previousToken, callback) -> {
            assertEquals(checkUrl, url);
            assertNull(previousToken);
            didAuth.set(true);
            callback.accept(new HttpClient.BasicAuthenticationToken("user", "invalid password"));
        });
        MockServer mockServer = new MockServer(port);
        try {

            SettableFuture<String> result = SettableFuture.create();
            client.getToStream(checkUrl, (reader) -> {
                try {
                    result.set(CharStreams.toString(reader));
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            });

            String read = result.get(1, TimeUnit.SECONDS);
            assertNotNull(read); // shouldn't ever get here.
        } catch(TimeoutException e){
            assertTrue(didAuth.get());
            assertEquals("Couldn't authenticate with "+checkUrl, error.get());
            throw e;
        } finally {
            mockServer.stop();
        }

    }
}