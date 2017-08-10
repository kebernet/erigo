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
import net.kebernet.configuration.client.model.SettingValue;
import net.kebernet.configuration.server.model.SettingValueRepository;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

import static org.junit.Assert.assertTrue;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

/**
 * Created by rcooper on 6/15/17.
 */
public class WifiConfigWriterTest {
    @Test
    public void testAdhocConfig() throws Exception {
        if(System.getProperty("build.dir") == null){
            throw new RuntimeException("No build dir");
        }
        File dir = new File(System.getProperty("build.dir")+"/test", WifiConfigWriterTest.class.getSimpleName()+"-adhocConfig");
        File etc = new File(dir, "etc/erigo");
        if(!dir.mkdirs() || !dir.mkdir()){
            Logger.getAnonymousLogger().info("Didn't mkdir "+dir);
        }
        DefaultFileExporter ex = new DefaultFileExporter(etc, new SettingValueRepository(etc, "testThing"));
        ex.setAlwaysWrite(true);
        ex.exportMissingFiles();
        StartupParameters params = new StartupParameters();
        params.setDeviceType("Unit Test Device");
        params.setCSubnet(26);
        params.setStorageDirectory(etc.getAbsolutePath());
        params.setTargetDirectory(dir.getAbsolutePath());
        ScriptExecutor executor = mock(ScriptExecutor.class);
        doNothing().when(executor).runAndDeleteScript(anyString());
        WifiConfigWriter writer = new WifiConfigWriter(params, executor);
        writer.writeAdHocNetworkConfig();

        File interfaces = new File(dir, "etc/network/interfaces");
        try(InputStreamReader r = new InputStreamReader(new FileInputStream(interfaces), Charsets.UTF_8)){
            List<String> read = CharStreams.readLines(r);
            assertTrue(read.contains("iface wlan0 inet static"));
            assertTrue(read.contains("  address 192.168.26.1"));
            assertTrue(read.contains("  wireless-mode ad-hoc"));
        }

        File dhcpd = new File(dir, "etc/dhcpd/dhcpd.conf");
        try(InputStreamReader r = new InputStreamReader(new FileInputStream(dhcpd), Charsets.UTF_8)){
            List<String> read = CharStreams.readLines(r);
            assertTrue(read.contains("subnet 192.168.26.0 netmask 255.255.255.0 {"));
            assertTrue(read.contains("  range 192.168.26.5 192.168.26.150;"));
        }

        File before = new File(dir, "adhoc-before");
        assertTrue(before.exists());
        try(InputStreamReader r = new InputStreamReader(new FileInputStream(before), Charsets.UTF_8)){
            List<String> read = CharStreams.readLines(r);
            assertTrue(read.contains("ifconfig down wlan0"));
        }

        File after = new File(dir, "adhoc-after");
        assertTrue(after.exists());
        try(InputStreamReader r = new InputStreamReader(new FileInputStream(after), Charsets.UTF_8)){
            List<String> read = CharStreams.readLines(r);
            assertTrue(read.contains("ifconfig up wlan0"));
            assertTrue(read.contains("service dhcpd start"));
        }
    }

    @Test
    public void testWifiConfig() throws Exception {
        if (System.getProperty("build.dir") == null) {
            throw new RuntimeException("No build dir");
        }
        File dir = new File(System.getProperty("build.dir") + "/test", WifiConfigWriterTest.class.getSimpleName() + "-wifiConfig");
        File etc = new File(dir, "etc/erigo");
        if (!dir.mkdirs() || !dir.mkdir()) {
            Logger.getAnonymousLogger().info("Didn't mkdir " + dir);
        }
        DefaultFileExporter ex = new DefaultFileExporter(etc, new SettingValueRepository(etc, "testThing"));
        ex.setAlwaysWrite(true);
        ex.exportMissingFiles();
        StartupParameters params = new StartupParameters();
        params.setDeviceType("Unit Test Device");
        params.setCSubnet(26);
        params.setStorageDirectory(etc.getAbsolutePath());
        params.setTargetDirectory(dir.getAbsolutePath());
        ScriptExecutor executor = mock(ScriptExecutor.class);
        doNothing().when(executor).runAndDeleteScript(anyString());
        WifiConfigWriter writer = new WifiConfigWriter(params, executor);
        List<SettingValue> values = Arrays.asList(new SettingValue("wifi_ssid", "TheSSSID"),
                new SettingValue("wifi_password", "ThePassword"));

        writer.writeRegularNetworkConfig(values);

        File interfaces = new File(dir, "etc/network/interfaces");
        try(InputStreamReader r = new InputStreamReader(new FileInputStream(interfaces), Charsets.UTF_8)){
            List<String> read = CharStreams.readLines(r);
            assertTrue(read.contains("iface wlan0 inet dhcp"));
            assertTrue(read.contains("   wpa-ssid \"TheSSSID\""));
            assertTrue(read.contains("   wpa-psk \"ThePassword\""));
        }

        File before = new File(dir, "wifi-before");
        assertTrue(before.exists());
        try(InputStreamReader r = new InputStreamReader(new FileInputStream(before), Charsets.UTF_8)){
            List<String> read = CharStreams.readLines(r);
            assertTrue(read.contains("ifconfig down wlan0"));
            assertTrue(read.contains("service dhcpd stop"));
        }

        File after = new File(dir, "wifi-after");
        assertTrue(after.exists());
        try(InputStreamReader r = new InputStreamReader(new FileInputStream(after), Charsets.UTF_8)){
            List<String> read = CharStreams.readLines(r);
            assertTrue(read.contains("ifconfig up wlan0"));
        }
    }

}
