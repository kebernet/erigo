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

import com.google.common.base.Charsets;
import com.google.common.io.CharStreams;
import com.pureperfect.ferret.Scanner;
import com.pureperfect.ferret.vfs.Directory;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.List;
import java.util.logging.Logger;
import java.util.stream.Collectors;

/**
 * Created by rcooper on 7/15/17.
 */
public class ExportDefaultFiles {
    private static final Logger LOGGER = Logger.getLogger(ExportDefaultFiles.class.getCanonicalName());
    private final File settingsDirectory;

    private final Scanner classpathScanner = new Scanner();

    public ExportDefaultFiles(File settingsDirectory) throws IOException {
        this.settingsDirectory = settingsDirectory;
        this.classpathScanner.add(ExportDefaultFiles.class.getClassLoader());
        if (!settingsDirectory.mkdirs()) {
            LOGGER.warning("Didn't mkdirs" + settingsDirectory.getAbsolutePath());
        }
    }

    public void exportFiles() throws IOException {
        writeFiles("/adhoc");
        writeFiles("/wifi");
        writeFiles("/configs");
    }

    private void writeFiles(String prefix) throws IOException {
        listResources(prefix).parallelStream()
                .forEach((file) -> {
                    File target = new File(this.settingsDirectory, prefix + "/" + file);
                    if (target.exists()) {
                        return;
                    }
                    if (!target.getParentFile().mkdirs()) {
                        LOGGER.info("Didn't mkdirs " + target.getParentFile());
                    }
                    try (Writer output = new OutputStreamWriter(new FileOutputStream(target), Charsets.UTF_8)) {
                        CharStreams.copy(
                                new InputStreamReader(WifiConfigWriter.class.getResourceAsStream(prefix + "/" + file), Charsets.UTF_8),
                                output);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                });
    }

    List<String> listResources(String path) throws IOException {
        return classpathScanner.scan(
                (resource) ->
                        resource.getFullPath().contains(path) &&
                                !(resource instanceof Directory)
        )
                .stream()
                .map(pe -> pe.getFullPath().substring(pe.getFullPath().indexOf(path) + path.length()))
                .collect(Collectors.toList());
    }

}
