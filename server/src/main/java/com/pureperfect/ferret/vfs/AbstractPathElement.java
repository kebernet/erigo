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

/**
 * Common logic for path elements.
 * 
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
abstract class AbstractPathElement implements PathElement
{
	private Container parent;

	public AbstractPathElement(Container parent)
	{
		this.parent = parent;
	}

	public final Container getParent()
	{
		return this.parent;
	}

	@Override
	public final int hashCode()
	{
		return this.getFullPath().hashCode();
	}

	@Override
	public final boolean equals(Object obj)
	{
		if (obj instanceof PathElement)
		{
			PathElement other = (PathElement) obj;

			return this.getFullPath().equals(other.getFullPath());
		}

		return false;
	}
	
	public String getFullPath()
	{
		if(this.parent == null)
			return this.getName();
		
		StringBuilder builder = new StringBuilder();
		
		builder.append(this.parent.getFullPath());
		
		builder.append(this.getName());
		
		return builder.toString();
	}
	
	@Override
	public final String toString()
	{
		return this.getFullPath();
	}
}