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
import com.google.gson.Gson;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;

/**
 * Created by rcooper on 7/17/17.
 */
public class GsonFactory {

    public static Gson newInstance(){
        return new Gson();
    }

    public static <T> T readStreamAsUTF8(InputStream stream, Class<T> clazz){
        return newInstance().fromJson(new InputStreamReader(stream, Charsets.UTF_8), clazz);
    }

    public static <T> T readFileAsUTF8(File file, Class<T> clazz) throws FileNotFoundException {
        return readStreamAsUTF8(new FileInputStream(file), clazz);
    }
}
