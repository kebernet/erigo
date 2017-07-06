package net.kebernet.configuration.server;

import com.github.mustachejava.DefaultMustacheFactory;
import com.github.mustachejava.Mustache;
import com.github.mustachejava.MustacheFactory;
import com.pureperfect.ferret.Scanner;
import com.pureperfect.ferret.vfs.Directory;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Created by rcooper on 6/13/17.
 */
public class WifiConfigWriter {
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
            target.getParentFile().mkdirs();
            try(FileWriter output = new FileWriter(target)) {
                Mustache mustache = factory.compile(
                        new InputStreamReader(WifiConfigWriter.class.getResourceAsStream("/adhoc" + file))
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
