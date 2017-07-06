package net.kebernet.configuration.client.util;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/6/17.
 */
public class URIUtil {
    private static final Logger LOGGER = Logger.getLogger(URIUtil.class.getCanonicalName());
    public static String resolveRelativeURI(String base, String relative){
        try {
            URI uri = new URI(base);
            return uri.resolve(new URI(relative)).toString();
        } catch (URISyntaxException e) {
            LOGGER.log(Level.WARNING, "Couldn't resolve "+relative+" from "+base);
            return relative;
        }
    }
}
