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

import com.beust.jcommander.Parameter;

/**
 * Created by rcooper on 6/13/17.
 */
@SuppressWarnings("unused")
public class StartupParameters {

    @Parameter(names = {"-d", "--device-type"}, description = "The name of the device. Will be postfixed with the last " +
            "two characters of the MAC address.")
    private String deviceType = "RaspberryPi";

    @Parameter(names = {"-c", "--c-subnet"}, description = "The class C subnet below 192.168.X.* that it will create for " +
            "ad-hoc networking.")
    private int cSubnet = 1;

    @Parameter(names = {"-t", "--target-directory"}, description = "The root target directory to write configuration files to.")
    private String targetDirectory = "/";

    @Parameter(names = {"-s", "--settings-directory"}, description = "The directory to store values to relative to the target directory")
    private String storageDirectory = "etc/erigo";


    @Parameter(names = {"-i", "--interface"}, description = "The wifi interface to manage")
    private String wlanInterface = "wlan0";

    @Parameter(names = {"-m", "--mode"}, description = "Toggle for the Dropwizard configuration.")
    private String mode = "server";

    @Parameter(names ="--network-client-matcher", description = "A Regular expression to match network addresses that should be" +
            "allowed to talk to the service.")
    private String hostMatchRegex;

    @Parameter(names = "--dont-require-login", description = "Prevents the HTTP service from requiring a login.")
    private boolean dontRequireLogin = false;

    @Parameter(names = "--dont-require-ssl", description = "Prevents the exposed URIs from redirecting to HTTPS.")
    private boolean dontRequireSsl = false;

    @Parameter(names = "--help", help = true, description = "Displays the help text.")
    private boolean help;

    @Parameter(names = "--groovy-shell-enabled", description = "Toggles the localhost Groovy shell listener.")
    private boolean groovyShellEnabled = true;

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    public int getCSubnet() {
        return cSubnet;
    }

    public void setCSubnet(int cSubnet) {
        this.cSubnet = cSubnet;
    }

    public String getTargetDirectory() {
        return targetDirectory;
    }

    public void setTargetDirectory(String targetDirectory) {
        this.targetDirectory = targetDirectory;
    }

    public String getWlanInterface() {
        return wlanInterface;
    }

    public void setWlanInterface(String wlanInterface) {
        this.wlanInterface = wlanInterface;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public String getStorageDirectory() {
        return storageDirectory;
    }

    public void setStorageDirectory(String storageDirectory) {
        this.storageDirectory = storageDirectory;
    }

    public String getHostMatchRegex() {
        return hostMatchRegex;
    }

    public void setHostMatchRegex(String hostMatchRegex) {
        this.hostMatchRegex = hostMatchRegex;
    }

    public boolean isDontRequireLogin() {
        return dontRequireLogin;
    }

    public void setDontRequireLogin(boolean dontRequireLogin) {
        this.dontRequireLogin = dontRequireLogin;
    }

    public boolean isDontRequireSsl() {
        return dontRequireSsl;
    }

    public void setDontRequireSsl(boolean dontRequireSsl) {
        this.dontRequireSsl = dontRequireSsl;
    }

    public boolean isHelp(){
        return this.help;
    }
}
