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
package com.pureperfect.ferret.vfs;

import javax.servlet.ServletContext;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Implementation of a web directory.
 *
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
class ImplWebDirectory extends ImplWebFile implements WebDirectory {
    /**
     * Create a new web directory.
     *
     * @param parent  the parent directory
     * @param context the servlet context
     * @param path    the path to this directory
     */
    public ImplWebDirectory(WebDirectory parent, ServletContext context,
                            String path) {
        super(parent, context, path);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public List<PathElement> getChildren() throws IOException {
        WebFileSystem fs = WebFileSystem.getInstance();

        Set<String> childPaths = context.getResourcePaths(this.path);

        List<PathElement> results = new ArrayList<PathElement>();

        for (String path : childPaths) {
            results.add(fs.getVirtualPath(this, context, path));
        }

        return results;
    }
}
