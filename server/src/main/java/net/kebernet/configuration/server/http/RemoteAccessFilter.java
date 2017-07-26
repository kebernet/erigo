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

import javax.annotation.Nullable;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.InetAddress;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by rcooper on 7/19/17.
 */
@Singleton
public class RemoteAccessFilter implements Filter {

    private final String hostMatchRegex;

    private final Set<String> localAddresses = new HashSet<>();

    @Inject
    public RemoteAccessFilter(@Named("hostMatchRegex") String hostMatchRegex) {
        this.hostMatchRegex = hostMatchRegex;
        try {
            localAddresses.add(InetAddress.getLocalHost().getHostAddress());
            for (InetAddress inetAddress : InetAddress.getAllByName("localhost")) {
                localAddresses.add(inetAddress.getHostAddress());
            }
        } catch (IOException e) {
            throw new RuntimeException("Unable to lookup local addresses");
        }
    }

    @Override
    public void init(FilterConfig config) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        if (matches(request.getRemoteHost()) || matches(request.getRemoteAddr())) {
            chain.doFilter(request, response);
        } else if (response instanceof HttpServletResponse) {
            ((HttpServletResponse) response).setStatus(403);
        } else {
            throw new ServletException("What the hell is going on here?");
        }
    }

    private boolean matches(@Nullable String host) {
        return host != null &&
                (
                        localAddresses.contains(host) ||
                        hostMatchRegex == null ||
                        host.matches(hostMatchRegex)
                );
    }

    @Override
    public void destroy() {
    }
}
