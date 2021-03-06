Server
======

The Erigo Server is a service for Raspberry Pi and *nix type devices that 
supports configuration using the Erigo apps.

Build
-----

```../gradlew build``` will build and package the server app. The result
will be in ```build/distributions```. This will include:

 * erigo-server-{version}-all.deb : A Debian package suitable for a Raspberry Pi.
 * erigo-server-{version}.zip: A zip file containing the server app packaged as a zip. It is kind
   of on you do deal with setting it up in your environment.


Install
-------




Configure
---------

There are a a number of command line options you can configure. If you are installing Erigo as a
service on your machine, you can look at configuring the ```DAEMON_OPTS``` in the 
```erigo-server-init``` script, or pass them on the command line:

```
$ bin/erigo-server --help

Usage: erigo-server [options]
  Options:
    -c, --c-subnet
      The class C subnet below 192.168.X.* that it will create for ad-hoc 
      networking. 
      Default: 1
    -d, --device-type
      The name of the device. Will be postfixed with the last few characters 
      of the MAC address.
      Default: RaspberryPi
    --dont-require-login
      Prevents the HTTP service from requiring a login.
      Default: false
    --dont-require-ssl
      Prevents the exposed URIs from redirecting to HTTPS.
      Default: false
    --help
      Displays the help text.
    -i, --interface
      The wifi interface to manage
      Default: wlan0
    -m, --mode
      Toggle for the Dropwizard configuration.
      Default: server
    --network-client-matcher
      A Regular expression to match network addresses that should beallowed to 
      talk to the service.
    -s, --settings-directory
      The directory to store values to relative to the target directory
      Default: etc/erigo
    -t, --target-directory
      The root target directory to write configuration files to.
      Default: /

```




Custom Settings Groups
----------------------

You can set up Erigo to configure your own services and settings through 
the application. This is done by:

 1. Creating a group.json file that defines the settings you want to configure.
 2. Creating a set of template files that will be written out to the filesystem
 when your settings are changed.
 3. An optional before and after script that will be executed before the templates
 are applied and after the templates are applied.
 4. Creating a new folder for your configuration group in ```/etc/erigo/configs```.
 
Let's look at a quick example. 

Say you want to update the hostname in your Apache config. Lets start by creating 
```/etc/erigo/apache/etc/httpd/httpd.conf```. This wills be our template file for writing
out new configuration files. At the bottom of this file we will put:

```
<VirtualHost *:80>
    # This first-listed virtual host is also the default for *:80
    ServerName  {{{virtual_host_name}}}  
    DocumentRoot "/www/domain"
</VirtualHost>
```

The ```{{{virtual_host_name}}}``` is a Mustache expression that will get populated with
our setting value. Every file you place inside your config director is going to be treated
like a Mustache template. You can find more about formatting these from:

http://mustache.github.io/mustache.5.html

Next, we want to restart our Apache server after the changes are applied, so we create 
```/etc/erigo/configs/apache/after.sh``` and we populate it like so:

```$bash
#!/bin/bash
service httpd restart
```

Now, after the user changes ```virtual_host_name``` we will restart the Apache server to 
pick up the changes.

Finally, we need to create ```/etc/erigo/configs/group.json```. This will define what the
user sees in the application UI:

```$javascript
{
  "index": 10,                                                 // A priority value to for UI order
  "name": "Apache Settings",                                   // The name of the group
  "description": "Changes things about the Apache server",     // A description
  "settings": [
    {
      "id": "virtual_host_name",                               // The setting ID we used in the template
      "name": "Virtual Host Name",                             // A user friendly label.
      "validationExpression": "^[a-zA-Z1-9-]*$"                // A regular expression to validate input.
    }
  ]

}
```

Now restart the Ergio service, and you will see your new "Apache Settings" pannel in the configuration for
your device.


Other
-----

This project includes a binary for [adhocnet](https://github.com/hildjj/adhocnet) for working on Mac OS.