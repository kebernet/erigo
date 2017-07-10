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
 * A pre-filter determines whether or not a given resource should be allowed to
 * be added to the scan path. See {@link Scanner#setPrefilter(Prefilter)}.
 * 
 * 
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 * @see Scanner
 */
public interface Prefilter
{
	/**
	 * Determine whether or not the given file should be allowed.
	 * 
	 * @param f
	 *            the file to check
	 * @return whether or not the given file should be allowed.
	 */
	public boolean allow(File f);

	/**
	 * Determine whether or not the given url should be allowed.
	 * 
	 * @param url
	 *            the url to check
	 * @return whether or not the given url should be allowed.
	 */
	public boolean allow(URL url);
}