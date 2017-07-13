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

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import java.security.KeyStore;

/**
 * Created by rcooper on 7/13/17.
 */
public class CertificateToolTest {

    private static int port = MockServer.randomPort();
    private static MockServer mockServer;

    @BeforeClass
    public static void setup() throws Exception {
        mockServer = new MockServer(port);
    }

    @AfterClass
    public static void tearDown() throws Exception {
        mockServer.stop();
    }


    @Test
    public void testCertificateFetch() throws Exception {
        KeyStore trustStore = KeyStore.getInstance(KeyStore.getDefaultType());
        new CertificateTool(trustStore).fetchCertificatesForUrl("https://localhost:" + (port + 1) + "/");
    }

}