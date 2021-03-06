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

import com.pureperfect.ferret.ScanException;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.zip.ZipEntry;

/**
 * An implementation of a lightweight Virtual File System (VFS) appropriate for
 * scanning on the local file system or across a network.
 *
 * @author J. Chris Folsom
 * @version 1.0
 * @see WebFileSystem
 * @since 1.0
 */
public class FileSystem {
    private static FileSystem singleton = new FileSystem();

    //TODO delay file creation?
    private FileSystem() {
        // singleton
    }

    /**
     * Determine whether or not a URL is a directory on the local file system.
     *
     * @return whether or not a URL is a directory on the local file system.
     */
    private static boolean isDirectory(final URL url) {
        return "file".equals(url.getProtocol())
                && new File(url.getFile()).isDirectory();
    }

    /**
     * Determine whether or not the given file is an archive.
     *
     * @param file the file to test
     * @return whether or not it is an archive
     */
    private static boolean isArchive(File file) {
        return isArchive(file.getName());
    }

    /**
     * Determine whether or not the given url is an archive.
     *
     * @param url the url to test
     * @return whether or not the given url is an archive
     */
    private static boolean isArchive(URL url) {
        return isArchive(url.toString());
    }

    /**
     * Determine whether or not the given name is an archive.
     *
     * @param s the name to test
     * @return whether or not it is an archive
     */
    private static boolean isArchive(String s) {
        return s.endsWith(".jar") || s.endsWith(".zip") || s.endsWith(".war")
                || s.endsWith(".ear") || s.endsWith(".sar");
    }

    /**
     * Get an instance of the file system.
     *
     * @return an instance of the file system
     */
    public static FileSystem getInstance() {
        return singleton;
    }

    /**
     * Get the appropriate type of resource for the file.
     *
     * @param parent the parent directory if applicable. This can be null
     * @param file   the file
     * @return the virtual resource
     */
    public PathElement getVirtualPath(Directory parent, File file) {
        if (file.isDirectory()) {
            return new ImplDirectory(parent, file);
        } else if (isArchive(file)) {
            try {
                return new ImplArchive(parent, file.toURI().toURL());
            } catch (MalformedURLException e) {
                throw new ScanException(e);
            }
        } else if (file.getName().endsWith(".class")) {
            return new ImplFileClassFile(parent, file);
        }

        return new ImplFileFile(parent, file);
    }

    /**
     * Get the appropriate type of resource for the url.
     *
     * @param parent The parent directory of the given url. This can be null
     * @param url    the url to get the virtual resource for
     * @return the virtual resource
     */
    public PathElement getVirtualPath(Directory parent, URL url) {
        if (isDirectory(url)) {
            return new ImplDirectory(parent, new File(url.getFile()));
        } else if (isArchive(url)) {
            return new ImplArchive(parent, url);
        } else if (url.toString().endsWith(".class")) {
            return new ImplURLClassFile(parent, url);
        }

        return new ImplFileFile(parent, new File(url.getFile()));
    }

    /**
     * Get the appropriate type of resource for the archive entry.
     *
     * @param parent The archive containing the entry
     * @param entry  the entry
     * @return a virtual representation of the entry
     */
    public PathElement getVirtualPath(Archive parent, ZipEntry entry) {
        if (entry.getName().endsWith(".class")) {
            return new ImplArchiveEntryClassFile(parent, entry);
        } else {
            return new ImplArchiveEntry(parent, entry);
        }
    }
}
