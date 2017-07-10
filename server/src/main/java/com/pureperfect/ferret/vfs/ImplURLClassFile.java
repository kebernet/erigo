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
import java.net.URL;

/**
 * A class file for a url.
 * 
 * @author J. Chris Folsom
 * @since 1.0
 * @version 1.0
 */
class ImplURLClassFile extends AbstractPathElement implements ClassFile
{
	private URL url;
	
	public ImplURLClassFile(Container parent, URL url)
	{
		super(parent);
		this.url = url;
	}

	@Override
	public String getName()
	{
		return url.getFile();
	}

	@Override
	public InputStream openStream() throws IOException,
			UnsupportedOperationException
	{
		return this.url.openStream();
	}

	@Override
	public javassist.bytecode.ClassFile getClassFile() throws IOException
	{
		return new javassist.bytecode.ClassFile(new DataInputStream(
				this.openStream()));
	}
}
