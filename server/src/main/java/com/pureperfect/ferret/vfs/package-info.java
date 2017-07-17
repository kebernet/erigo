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
/**
 * A lightweight Virtual File System (VFS) for file system / network / class
 * path scanning. Most Ferret users should not have to worry about the classes
 * in this package beyond knowing how to tell the difference between a zip file
 * and a class file or directory. Underlying resources on the file system or on
 * the network will be mapped to one of the following VFS types:
 * <p>
 * <style> .mytable { border: 1px solid black; border-collapse: collapse;
 * text-align: center; } </style>
 * <p>
 * <table class="mytable" style="width: 50%;">
 * <tr>
 * <th class="mytable">Actual Resource</th>
 * <th class="mytable">VFS Type</th>
 * </tr>
 * <tr>
 * <td class="mytable">A directory on the local file system</td>
 * <td class="mytable">{@link Directory}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A file on the local file system</td>
 * <td class="mytable">{@link File}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A ZIP file on the local file system</td>
 * <td class="mytable">{@link Archive}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A ZIP file on the network</td>
 * <td class="mytable">{@link Archive}</td>
 * </tr>
 * <td class="mytable">A JAR file on the local file system</td>
 * <td class="mytable">{@link Archive}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A JAR file on the network</td>
 * <td class="mytable">{@link Archive}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A generic file inside an archive</td>
 * <td class="mytable">{@link ArchiveEntry}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A Java&trade; class in a directory</td>
 * <td class="mytable">{@link ClassFile}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A Java&trade; class in an archive</td>
 * <td class="mytable">{@link ClassFile}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A Java&trade; class on the network</td>
 * <td class="mytable">{@link ClassFile}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A generic file on the network</td>
 * <td class="mytable">{@link File}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A generic file inside a web application (WAR)</td>
 * <td class="mytable">{@link WebFile}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A directory inside a web application (WAR)</td>
 * <td class="mytable">{@link WebDirectory}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A ZIP file inside a web application (WAR)</td>
 * <td class="mytable">{@link Archive}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A JAR file inside a web application (WAR)</td>
 * <td class="mytable">{@link Archive}</td>
 * </tr>
 * <tr>
 * <td class="mytable">A class file inside a web application (WAR)</td>
 * <td class="mytable">{@link ClassFile}</td>
 * </tr>
 * </table>
 *
 * @author J. Chris Folsom
 * @since 1.0
 */
package com.pureperfect.ferret.vfs;
