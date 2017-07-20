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
package net.kebernet.configuration.server.http;

import com.google.common.base.Charsets;
import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import org.jvnet.libpam.PAM;
import org.jvnet.libpam.PAMException;
import org.jvnet.libpam.UnixUser;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Base64;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by rcooper on 7/20/17.
 */
public class PamFilter implements Filter {
    private static final Logger LOGGER = Logger.getLogger(PamFilter.class.getCanonicalName());
    private static final Cache<String, UnixUser> USER_CACHE = CacheBuilder.newBuilder()
            .concurrencyLevel(16)
            .expireAfterWrite(5, TimeUnit.MINUTES)
            .build();
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        String header = null;
        if(response instanceof HttpServletResponse && request instanceof HttpServletRequest){
            HttpServletResponse resp = (HttpServletResponse) response;
            HttpServletRequest req = (HttpServletRequest) request;
            header = req.getHeader("Authorization");
            if(header == null){
                resp.setHeader("WWW-Authenticate", "Basic realm=\"Erigo Configuration Service\"");
                resp.setStatus(401);
                LOGGER.log(Level.INFO, "Missing http authorization header.");
                return;
            }
            header = header.substring("Basic ".length());


            header = new String(Base64.getDecoder().decode(header), Charsets.UTF_8);

            String finalHeader = header;
            try {
                UnixUser user = USER_CACHE.get(header, () -> {
                    String username = finalHeader.substring(0, finalHeader.indexOf(':'));
                    String password = finalHeader.substring(finalHeader.indexOf(':') + 1);
                    try {
                        return new PAM("login").authenticate(username, password);
                    } catch (PAMException e) {
                        LOGGER.log(Level.WARNING, "Failed to authenticate " + username, e);
                        return null;
                    }
                });
                if(user == null) {
                    resp.setStatus(403);
                    return;
                }
            } catch (ExecutionException e) {
                throw new ServletException(e);
            }
            chain.doFilter(request, response);
        } else {
            throw new ServletException("Unknown response type.");
        }
    }

    @Override
    public void destroy() {

    }
}
