/**
 * A lightweight Virtual File System (VFS) for file system / network / class
 * path scanning. Most Ferret users should not have to worry about the classes
 * in this package beyond knowing how to tell the difference between a zip file
 * and a class file or directory. Underlying resources on the file system or on
 * the network will be mapped to one of the following VFS types:
 * 
 * <style> .mytable { border: 1px solid black; border-collapse: collapse;
 * text-align: center; } </style>
 * 
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
 * @since 1.0
 * @author J. Chris Folsom
 */
package com.pureperfect.ferret.vfs;
