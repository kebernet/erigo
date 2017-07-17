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
package net.kebernet.configuration.server;

import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * Created by rcooper on 7/17/17.
 */
public class FileUtils {

    private static final File[] NO_FILES = new File[0];


    public static List<String> listAllRelativeFilePaths(File parent) {
        return  recursiveList(parent)
                .map(file -> file.getAbsolutePath().substring(parent.getAbsolutePath().length() + 1))
                .collect(Collectors.toList());
    }

    private static Stream<File> recursiveList(File parent) {
        return Arrays.stream(neverNull(parent.listFiles()))
            .flatMap((file)->{
                if (file.isDirectory()) {
                    return recursiveList(file);
                } else {
                    return Stream.of(file);
                }
            });
    }


    public static File[] neverNull(File[] array) {
        return array == null ? NO_FILES : array;
    }


}
