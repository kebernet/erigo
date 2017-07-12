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

import org.junit.Test;

import java.io.File;
import java.io.IOException;

import static org.junit.Assert.*;

/**
 * Created by rcooper on 7/13/17.
 */
public class FilePersistenceAuthenticationCallbackTest {


    @SuppressWarnings("ResultOfMethodCallIgnored")
    @Test
    public void testPersistAndLoad() throws IOException {
        File testFile = new File(System.getProperty("build.dir")+"/test-tmp/"+
                FilePersistenceAuthenticationCallbackTest.class.getSimpleName()+"/authentication.properties");
        if(testFile.exists() && !testFile.delete()){
            throw new RuntimeException("Failed to delete temp file.");
        }
        String checkString = "http://localhost:9999/";
        HttpClient.AuthenticationToken checkToken = new HttpClient.BasicAuthenticationToken("user", "password");
        FilePersistenceAuthenticationCallback callback = new FilePersistenceAuthenticationCallback(testFile,
                (url, previousToken, callback1) -> {
                    assertEquals(checkString, url);
                    assertNull(previousToken);
                    callback1.accept(checkToken);
                });
        FilePersistenceAuthenticationCallback instance = new FilePersistenceAuthenticationCallback(testFile, callback);
        instance.authenticationRequired(checkString, null, (token)->
            assertEquals(checkToken, token)
        );
        assertTrue(testFile.exists());
        instance.authenticationRequired(checkString, null, (token)->{
            assertEquals(checkToken.getScheme(), token.getScheme());
            assertEquals(checkToken.getValue(), token.getValue());
            assertTrue(token instanceof FilePersistenceAuthenticationCallback.PersistedAuthenticationToken);
        });
    }

}