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
package net.kebernet.configuration.server.model;

import net.kebernet.configuration.client.impl.GsonFactory;
import net.kebernet.configuration.client.model.Group;
import net.kebernet.configuration.server.FileUtils;

import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.function.Consumer;
import java.util.logging.Logger;
import java.util.stream.Collectors;

/**
 * Created by rcooper on 7/15/17.
 */
@Singleton
public class ConfigurationGroupRepository {
    private static final Logger LOGGER = Logger.getLogger(ConfigurationGroupRepository.class.getCanonicalName());
    private final File storageDirectory;
    private final ArrayList<ConfigurationGroup> groups = new ArrayList<>();
    private long previousNewestTimestamp = Long.MIN_VALUE;

    @Inject
    public ConfigurationGroupRepository(@Named("storageDirectory") File storageDirectory) {
        this.storageDirectory = storageDirectory;
    }

    private static void ifFileExist(File parent, String f, Consumer<String> relativePath) {
        File check = new File(parent, f);
        if (check.exists()) {
            relativePath.accept(f);
        }
    }

    private boolean isAnyFileNewerThanLastCheck() {
        File configs = new File(storageDirectory, "configs");
        long newestTimestamp = FileUtils.recursiveListOfRegularFiles(configs)
                .map(File::lastModified)
                .max(Comparator.naturalOrder())
                .orElse(previousNewestTimestamp);
        if(newestTimestamp > this.previousNewestTimestamp){
            this.previousNewestTimestamp = newestTimestamp;
            return true;
        }
        return false;
    }

    /**
     * Checks the last modified time of the files in the configuration repository
     * and maybe reloads the internal "groups" property
     * @return Whether a load was performed.
     * @throws IOException Something couldn't be read.
     */
    public synchronized boolean load() throws IOException {
        if(!isAnyFileNewerThanLastCheck()){
            return false;
        }
        groups.clear();
        File configs = new File(storageDirectory, "configs");
        if (configs.exists()) {
            if (!configs.getParentFile().mkdirs() || !configs.mkdir()) {
                LOGGER.warning("Failed to make directories " + configs.getAbsolutePath());
            }
        }
        File[] roots = configs.listFiles(File::isDirectory);
        roots = roots == null ? new File[0] : roots;
        for (File f : roots) {
            groups.add(loadRoot(f));
        }
        groups.sort(Comparator.comparingInt(o -> o.getSettingsGroup().getIndex()));
        return true;
    }

    public List<ConfigurationGroup> getGroups() {
        return groups;
    }

    ConfigurationGroup loadRoot(File f) throws FileNotFoundException {
        ConfigurationGroup group = new ConfigurationGroup();
        group.setName(f.getName());
        group.setSettingsGroup(GsonFactory.readFileAsUTF8(new File(f, "group.json"), Group.class));
        ifFileExist(f, "after.sh", group::setAfterScriptTemplate);
        ifFileExist(f, "before.sh", group::setBeforeScriptTemplate);
        File[] templateDirs = f.listFiles(File::isDirectory);
        templateDirs = templateDirs == null ? new File[0] : templateDirs;
        group.setTemplateFiles(Arrays.stream(templateDirs)
                .map(FileUtils::listAllRelativeFilePaths)
                .flatMap(List::stream)
                .collect(Collectors.toList())
        );
        return group;
    }


}
