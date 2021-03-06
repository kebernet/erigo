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
package net.kebernet.configuration.client.util;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/6/17.
 */
public class URIUtil {
    private static final Logger LOGGER = Logger.getLogger(URIUtil.class.getCanonicalName());
    public static String resolveRelativeURI(String base, String relative){
        try {
            URI uri = new URI(base);
            return uri.resolve(new URI(relative)).toString();
        } catch (NullPointerException | URISyntaxException e) {
            LOGGER.log(Level.WARNING, "Couldn't resolve "+relative+" from "+base);
            return relative;
        }
    }
}
