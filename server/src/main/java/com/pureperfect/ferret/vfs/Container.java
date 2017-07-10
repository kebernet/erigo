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
import java.util.List;

/**
 * A container is a {@link PathElement} that contains other {@link PathElement}s. This will either be an
 * {@link Archive} or a {@link Directory}.
 * 
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
public interface Container extends PathElement
{
	/**
	 * Get the children of this container.
	 * 
	 * @return the children of this container
	 * @throws IOException
	 *             if it happens
	 */
	public List<PathElement> getChildren() throws IOException;
}
