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
package net.kebernet.configuration.server.http;

import org.junit.Ignore;
import org.junit.Test;
import org.jvnet.libpam.PAM;
import org.jvnet.libpam.PAMException;
import org.jvnet.libpam.UnixUser;

import static org.junit.Assert.*;

/**
 * Created by rcooper on 7/20/17.
 */
public class PamFilterTest {


    @Test @Ignore
    public void testSimplePam() throws PAMException {
        PAM pam = new PAM("login");
        UnixUser u = pam.authenticate("rcooper", "password");
        System.out.println(u.getDir());
    }
}