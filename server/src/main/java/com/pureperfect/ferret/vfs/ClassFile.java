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

import java.io.IOException;

/**
 * A Java class file. It's parent will be either a {@link Directory} or an {@link Archive}.
 *
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
public interface ClassFile extends PathElement {
    /**
     * Get the underlying class file.
     *
     * @return the underlying class file
     * @throws IOException if an error occurs trying to parse the class file
     */
    public abstract javassist.bytecode.ClassFile getClassFile()
            throws IOException;
}
