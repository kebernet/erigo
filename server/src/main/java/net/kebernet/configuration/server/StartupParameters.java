package net.kebernet.configuration.server;

import com.beust.jcommander.Parameter;
import org.jboss.logging.Param;

/**
 * Created by rcooper on 6/13/17.
 */
public class StartupParameters {

    @Parameter(names = {"-d", "--device-type"}, description = "The name of the device. Will be postfixed with the last " +
            "two characters of the MAC address.")
    private String deviceType;

    @Parameter(names= {"-c", "--c-subnet"}, description = "The class C subnet below 192.168.X.* that it will create for " +
            "ad-hoc networking. (1)")
    private int cSubnet = 1;

    @Parameter(names= {"-d", "--target-directory"}, description = "The root target directory to write configuration files to. (/)")
    private String targetDirectory = "/";

    @Parameter(names={"-s", "--settings-directory"}, description = "The directory to store values to relative to the target directory (/etc/erigo)")
    private String storageDirectory = "etc/erigo";


    @Parameter(names= {"-i", "--interface"}, description = "The wifi interface to manage (wlan0)")
    private String wlanInterface = "wlan0";

    @Parameter(names="-m", description = "mode")
    private String mode;

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    public int getcSubnet() {
        return cSubnet;
    }

    public void setcSubnet(int cSubnet) {
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
}
