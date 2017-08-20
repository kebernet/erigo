package net.kebernet.configuration.server.system;

import net.kebernet.configuration.server.StartupParameters;

import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import java.io.File;

@Singleton
public class ScriptsInspector implements SystemInspector {

    private final File storageDirectory;
    private final StartupParameters parameters;

    @Inject
    public ScriptsInspector(@Named("storageDirectory") File storageDirectory, StartupParameters parameters) {
        this.storageDirectory = storageDirectory;
        this.parameters = parameters;
    }

    @Override
    public synchronized boolean isWifiActive() {
        return false;
    }

    @Override
    public synchronized boolean isAdHocMode() {
        return false;
    }
}
