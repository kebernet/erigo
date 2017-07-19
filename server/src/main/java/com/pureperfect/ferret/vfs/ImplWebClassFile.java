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
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * Implementation of a class file in WEB-INF/classes.
 *
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
class ImplWebClassFile extends AbstractPathElement implements ClassFile {
    private String path;

    private ServletContext context;

    public ImplWebClassFile(Container parent, ServletContext context,
                            String path) {
        super(parent);
        this.context = context;
        this.path = path;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public InputStream openStream() throws IOException {
        return this.context.getResourceAsStream(this.path);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String getName() {
        return this.path;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String getFullPath() {
        return this.path;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public javassist.bytecode.ClassFile getClassFile() throws IOException {
        return new javassist.bytecode.ClassFile(new DataInputStream(
                this.openStream()));
    }
}
