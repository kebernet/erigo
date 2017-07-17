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
package com.pureperfect.ferret;

import java.io.File;
import java.io.FileFilter;

/**
 * ResourceFilter to select only jar files.
 *
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
class JARFileFilter implements FileFilter {
    private static final JARFileFilter singleton = new JARFileFilter();

    /**
     * Get a singleton instance.
     *
     * @return a singleton instance.
     */
    public static final JARFileFilter defaultInstance() {
        return JARFileFilter.singleton;
    }

    /*
     * (non-Javadoc)
     *
     * @see java.io.FileFilter#accept(java.io.File)
     */
    @Override
    public boolean accept(final File pathname) {
        return pathname.getName().endsWith(".jar");
    }
}
