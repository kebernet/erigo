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

import com.github.mustachejava.DefaultMustacheFactory;
import com.github.mustachejava.Mustache;
import com.github.mustachejava.MustacheFactory;
import com.google.common.base.Charsets;
import com.pureperfect.ferret.Scanner;
import com.pureperfect.ferret.vfs.Directory;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import java.util.stream.Collectors;

/**
 * Created by rcooper on 6/13/17.
 */
public class WifiConfigWriter {
    private static final Logger LOGGER = Logger.getLogger(WifiConfigWriter.class.getCanonicalName());
    private final MustacheFactory factory = new DefaultMustacheFactory();
    private final Scanner classpathScanner = new Scanner();
    private final Map<String, Object> renderContext = new HashMap<>();
    private final String targetDirectory;

    public WifiConfigWriter(String deviceName, StartupParameters startupParameters) {
        classpathScanner.add(WifiConfigWriter.class.getClassLoader());
        renderContext.put("deviceName", deviceName);
        renderContext.put("wlanInterface", startupParameters.getWlanInterface());
        renderContext.put("cSubnet", startupParameters.getcSubnet());
        renderContext.put("deviceType", startupParameters.getDeviceType());
        this.targetDirectory = startupParameters.getTargetDirectory();
    }

    public void writeAdHocNetworkConfig() throws IOException {
        for(String file : listResources("/adhoc")){
            File target = new File(targetDirectory+file);
            if(!target.getParentFile().mkdirs()){
                LOGGER.info("Didn't mkdirs "+target.getParentFile());
            }
            try(Writer output = new OutputStreamWriter(new FileOutputStream(target), Charsets.UTF_8)) {
                Mustache mustache = factory.compile(
                        new InputStreamReader(WifiConfigWriter.class.getResourceAsStream("/adhoc" + file), Charsets.UTF_8)
                        , file);

                mustache.execute(output, renderContext);
                output.close();
            }
        }
    }

    List<String> listResources(String path) throws IOException {
        return classpathScanner.scan(
                (resource) -> resource.getFullPath().contains(path) && !(resource instanceof Directory))
                .stream()
                .map( pe -> pe.getFullPath().substring(pe.getFullPath().indexOf(path) + path.length()))
                .collect(Collectors.toList());
    }


}
