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

import org.junit.Test;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.InetAddress;

import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;

public class RemoteAccessFilterTest {


    @Test
    public void testFilterLocalhost() throws Exception {
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        FilterChain chain = mock(FilterChain.class);
        RemoteAccessFilter filter = new RemoteAccessFilter("");

        String address = InetAddress.getLocalHost().getHostAddress();
        when(request.getRemoteAddr()).thenReturn(address);

        filter.doFilter(request, response, chain);
        verify(chain).doFilter(eq(request), eq(response));

        when(request.getRemoteAddr()).thenReturn("foo.com");
        filter.doFilter(request, response, chain);
        verify(response).setStatus(eq(403));
    }

    @Test
    public void testFilterMatch() throws Exception {
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        FilterChain chain = mock(FilterChain.class);
        RemoteAccessFilter filter = new RemoteAccessFilter("192\\.168\\.16\\.\\d\\d?\\d?");

        String address = "192.168.16.20";
        when(request.getRemoteAddr()).thenReturn(address);

        filter.doFilter(request, response, chain);
        verify(chain).doFilter(eq(request), eq(response));

        when(request.getRemoteAddr()).thenReturn("8.8.8.8");
        filter.doFilter(request, response, chain);
        verify(response).setStatus(eq(403));
    }

    @Test(expected = ServletException.class)
    public void testUnexpected() throws Exception {
        ServletRequest request = mock(ServletRequest.class);
        ServletResponse response = mock(ServletResponse.class);
        FilterChain chain = mock(FilterChain.class);
        RemoteAccessFilter filter = new RemoteAccessFilter("192\\.168\\.16\\.\\d\\d?\\d?");
        filter.init(null);
        filter.doFilter(request, response, chain);
        filter.destroy();
    }

}