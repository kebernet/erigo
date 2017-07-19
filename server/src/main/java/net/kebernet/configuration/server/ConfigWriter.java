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
import net.kebernet.configuration.client.model.SettingValue;
import net.kebernet.configuration.server.model.ConfigurationGroup;

import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/18/17.
 */
@Singleton
public class ConfigWriter {
    private final MustacheFactory factory = new DefaultMustacheFactory();
    protected final Map<String, Object> renderContext = new HashMap<>();

    protected static final Logger LOGGER = Logger.getLogger(WifiConfigWriter.class.getCanonicalName());
    protected final File storageDirectory;
    protected final File targetDirectory;


    @Inject
    public ConfigWriter(@Named("targetDirectory") File targetDirectory, @Named("storageDirectory") File storageDirectory){
        this.storageDirectory = storageDirectory;
        this.targetDirectory = targetDirectory;
        renderContext.put("erigo.targetDirectory", targetDirectory.getAbsolutePath());
        renderContext.put("erigo.storageDirectory", storageDirectory.getAbsolutePath());
    }


    public void executeApplyGroups(List<ConfigurationGroup> groups, List<SettingValue> settings){

    }


    protected void transformAndWrite(File templateFolder, File destinationFolder) throws IOException {
        for (String file : FileUtils.listAllRelativeFilePaths(templateFolder)) {
            File source = new File(templateFolder, file);
            File target = new File(destinationFolder, file);
            if (!target.getParentFile().mkdirs()) {
                LOGGER.info("Didn't mkdirs " + target.getParentFile());
            }

            LOGGER.info("Transforming from "+source.getAbsolutePath()+" to "+target.getAbsolutePath());
            try (Writer output = new OutputStreamWriter(new FileOutputStream(target), Charsets.UTF_8)) {
                Mustache mustache = factory.compile(
                        new InputStreamReader(new FileInputStream(source), Charsets.UTF_8)
                        , file);

                mustache.execute(output, renderContext);
                output.close();
            }
        }
    }
}
