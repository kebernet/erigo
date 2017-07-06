package net.kebernet.configuration.server;

import org.junit.Test;

import java.io.File;

/**
 * Created by rcooper on 6/15/17.
 */
public class WifiConfigWriterTest {
    @Test
    public void adHocConfigTest() throws Exception {
        File dir = new File("build/test/WifiConfigWriterTest");
        dir.mkdirs();
        dir.mkdir();
        StartupParameters params = new StartupParameters();
        params.setcSubnet(26);
        params.setTargetDirectory(dir.getAbsolutePath());
        WifiConfigWriter writer = new WifiConfigWriter("testDevice", params);
        writer.writeAdHocNetworkConfig();
    }


}