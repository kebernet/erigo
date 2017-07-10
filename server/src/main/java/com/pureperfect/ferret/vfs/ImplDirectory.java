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
import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 * An implementation of a directory on the virtual file system.
 * 
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
class ImplDirectory extends ImplFileFile implements Directory
{
	/**
	 * Create a new directory on the virtual file system.
	 * 
	 * @param parent
	 *            the parent directory
	 * @param file
	 *            the underlying Java file
	 */
	public ImplDirectory(Directory parent, java.io.File file)
	{
		super(parent, file);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public List<PathElement> getChildren() throws IOException
	{
		FileSystem fs = FileSystem.getInstance();

		java.io.File[] subfiles = this.getFile().listFiles();

		if (subfiles == null)
			return new LinkedList<PathElement>();

		List<PathElement> results = new ArrayList<PathElement>(subfiles.length);

		for (java.io.File file : subfiles)
		{
			results.add(fs.getVirtualPath(this, file));
		}

		return results;
	}

	@Override
	public InputStream openStream() throws IOException
	{
		throw new UnsupportedOperationException(this.getFullPath()
				+ " is a directory.");
	}
}