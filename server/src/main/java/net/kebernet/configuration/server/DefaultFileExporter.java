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
import net.kebernet.configuration.server.model.SettingValueRepository;

import javax.inject.Inject;
import javax.inject.Named;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;
import java.util.stream.Collectors;

/**
 * This class scans the classpath and writes the packaged template files to the filesystem.
 * Created by rcooper on 7/15/17.
 */
public class DefaultFileExporter {
    private static final Logger LOGGER = Logger.getLogger(DefaultFileExporter.class.getCanonicalName());
    private final File settingsDirectory;

    private final Scanner classpathScanner = new Scanner();
    private final SettingValueRepository valueRepository;

    @Inject
    public DefaultFileExporter(@Named("storageDirectory") File settingsDirectory, SettingValueRepository valueRepository) {
        this.settingsDirectory = settingsDirectory;
        this.valueRepository = valueRepository;
        this.classpathScanner.add(DefaultFileExporter.class.getClassLoader());
        if (!settingsDirectory.mkdirs()) {
            LOGGER.warning("Didn't mkdirs" + settingsDirectory.getAbsolutePath());
        }
    }

    public void exportMissingFiles() throws IOException {
        writeMissingFiles("/adhoc");
        writeMissingFiles("/wifi");
        writeMissingFiles("/configs");
        checkKeystoreGeneration();
    }

    private void checkKeystoreGeneration() {
        File keystoreFile = new File(settingsDirectory, "keystore.jks");
        if (!keystoreFile.exists()) {
            String hostname = valueRepository.getDeviceName();
            String ip = "";
            try {
                for (byte b : InetAddress.getLocalHost().getAddress()) {
                    if (ip.length() > 0) {
                        ip += ".";
                    }
                    ip += Integer.toString(b & 0xFF);
                }
            } catch (UnknownHostException e) {
                e.printStackTrace();
            }

            List<String> command = Arrays.asList(
                    "keytool",
                    "-genkey",
                    "-dname",
                    new StringBuilder("CN=")
                            .append(hostname)
                            .append(", OU=Erigo, O=Raspberry Pi, L=Atlanta, ST=GA, C=US").toString(),
                    "-ext",
                    new StringBuilder("SAN=dns:")
                            .append(hostname).append(",dns:").append(hostname)
                            .append(".local,ip:")
                            .append(ip)
                            .append(",ip:127.0.0.1,dns:localhost").toString(),
                    "-alias",
                    "default",
                    "-validity", "9999", "-keyalg", "RSA", "-keysize", "2048", "-keystore", keystoreFile.getAbsolutePath(),
                    "-storepass", "erigoerigo"
                    );

            LOGGER.info("Generating initial keystore with: " + command.toString());
            try {
                int result = new ProcessBuilder(command)
                    .inheritIO()
                    .start().waitFor();
                LOGGER.info("Result "+result);
                if(result != 0){
                    throw new IllegalStateException("Bad result from generating keystore "+result);
                }
            } catch (Exception e) {
                throw new IllegalArgumentException(e);
            }
        }
    }

    private void writeMissingFiles(String prefix) throws IOException {
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
