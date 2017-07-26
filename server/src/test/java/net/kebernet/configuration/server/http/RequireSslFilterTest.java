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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static org.mockito.Mockito.*;

public class RequireSslFilterTest {


    @Test
    public void doFilterRedirect() throws Exception {

        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        FilterChain chain = mock(FilterChain.class);

        RequireSslFilter filter = new RequireSslFilter();
        filter.init(null);

        when(request.getPathInfo()).thenReturn("");
        when(request.getContextPath()).thenReturn("/");
        when(request.getServletPath()).thenReturn("foo");
        when(request.getServerName()).thenReturn("bar");
        when(request.getScheme()).thenReturn("http");

        filter.doFilter(request, response, chain);
        verify(response).sendRedirect("https://bar:13132/foo");
        filter.destroy();
    }

    @Test
    public void doFilterPass() throws Exception {

        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        FilterChain chain = mock(FilterChain.class);

        RequireSslFilter filter = new RequireSslFilter();
        filter.init(null);

        when(request.getPathInfo()).thenReturn("");
        when(request.getContextPath()).thenReturn("/");
        when(request.getServletPath()).thenReturn("foo");
        when(request.getServerName()).thenReturn("bar");
        when(request.getScheme()).thenReturn("https");

        filter.doFilter(request, response, chain);
        verify(chain).doFilter(eq(request), eq(response));
        filter.destroy();
    }


    @Test
    public void doFilterDevice() throws Exception {

        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        FilterChain chain = mock(FilterChain.class);

        RequireSslFilter filter = new RequireSslFilter();
        filter.init(null);

        when(request.getPathInfo()).thenReturn("/device");
        when(request.getContextPath()).thenReturn("/");
        when(request.getServletPath()).thenReturn("");
        when(request.getServerName()).thenReturn("bar");
        when(request.getScheme()).thenReturn("http");

        filter.doFilter(request, response, chain);
        verify(chain).doFilter(eq(request), eq(response));
        filter.destroy();
    }


}