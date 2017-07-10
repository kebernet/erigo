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

import com.pureperfect.ferret.vfs.PathElement;

/**
 * Implement this interface to scan.
 * 
 * @author J. Chris Folsom
 * @version 1.0
 * @since 1.0
 */
public interface ScanFilter
{
	/**
	 * Define search criteria for scanning. If this method returns true, the
	 * visited resource will be added to the result set.
	 * 
	 * @param resource
	 *            The current resource being visited.
	 * 
	 * @return whether or not the resource should be included in the scan
	 *         results.
	 */
	public boolean accept(PathElement resource);
}
