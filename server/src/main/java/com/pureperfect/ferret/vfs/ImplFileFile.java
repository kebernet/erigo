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

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * Implementation of a file on the VFS.
 * 
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
class ImplFileFile extends AbstractPathElement implements File
{
	private java.io.File file;

	/**
	 * Create a new file on the VFS.
	 * 
	 * @param parent
	 *            the parent directory
	 * @param file
	 *            the underlying Java file
	 */
	ImplFileFile(Directory parent, java.io.File file)
	{
		super(parent);
		this.file = file;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public java.io.File getFile()
	{
		return this.file;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InputStream openStream() throws IOException
	{
		return new FileInputStream(this.file);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String getName()
	{
		return this.getFile().getName();
	}
	
	/**
	 * {@inheritDoc}
	 */
	@Override
	public final String getFullPath()
	{
		return this.getFile().getAbsolutePath();
	}
}