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
package com.pureperfect.ferret;

import java.io.File;
import java.net.URL;

/**
 * A prefilter that only allows local files if they actually exist.
 * 
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
class DefaultPrefilter implements Prefilter
{
	/*
	 * (non-Javadoc)
	 * 
	 * @see com.pureperfect.ferret.Prefilter#allow(java.io.File)
	 */
	@Override
	public boolean allow(File f)
	{
		return f.exists();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.pureperfect.ferret.Prefilter#allow(java.net.URL)
	 */
	@Override
	public boolean allow(URL url)
	{
		if ("file".equals(url.getProtocol()))
		{
			return new File(url.getFile()).exists();
		}

		return true;
	}
}