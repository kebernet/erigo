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

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * An implementation of a Java class file on the file system.
 * 
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
class ImplFileClassFile extends AbstractPathElement implements ClassFile
{
	private File realFile;

	/**
	 * Create a new class file.
	 * 
	 * @param parent
	 *            the parent directory
	 * @param underlying
	 *            .class file
	 */
	public ImplFileClassFile(Container parent, java.io.File underlying)
	{
		super(parent);
		this.realFile = underlying;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public javassist.bytecode.ClassFile getClassFile() throws IOException
	{
		return new javassist.bytecode.ClassFile(new DataInputStream(
				this.openStream()));
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String getName()
	{
		return this.realFile.getName();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InputStream openStream() throws IOException
	{
		return new FileInputStream(this.realFile);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String getFullPath()
	{
		return this.realFile.getAbsolutePath();
	}
}