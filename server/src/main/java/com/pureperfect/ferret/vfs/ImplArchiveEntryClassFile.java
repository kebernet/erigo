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
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;

/**
 * An implementation of a Java class file on the file system.
 * 
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
class ImplArchiveEntryClassFile extends AbstractPathElement implements ClassFile
{
	private ZipEntry realEntry;

	/**
	 * Create a new class file.
	 * 
	 * @param parent
	 *            the parent archive
	 * @param entry
	 *            the entry in the jar file
	 */
	public ImplArchiveEntryClassFile(Container parent, ZipEntry entry)
	{
		super(parent);
		this.realEntry = entry;
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
		return this.realEntry.toString();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public InputStream openStream() throws IOException
	{
		Archive parent = (Archive) this.getParent();

		return FileUtils.getInputStream(parent.getArchive().openStream(),
				this.realEntry);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String getFullPath()
	{
		String myName = this.realEntry.getName();
		String parentName = ((Archive) this.getParent()).getArchive()
				.toString();

		StringBuilder builder = new StringBuilder(parentName.length()
				+ myName.length() + 2);

		builder.append(parentName);
		builder.append("!/");
		builder.append(myName);

		return builder.toString();
	}
}