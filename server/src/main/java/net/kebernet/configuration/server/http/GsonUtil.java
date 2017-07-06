package net.kebernet.configuration.server.http;

import com.google.gson.Gson;

/**
 * Created by rcooper on 7/5/17.
 */
public class GsonUtil {

    public static Gson getInstance(){
        return new Gson();
    }
}
