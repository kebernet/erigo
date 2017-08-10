Desktop
=======

This module is a desktop application for configuring Erigo devices. It will both
discover computer-like devices running the server on your network using MDNS (nee
Apple Rendezvous) or Arduino-like devices connected to your USB/serial ports.

Build
-----

gradlew build will spit out all the relevant artifacts. You will find them in the
```build/distributions``` folder. 

These include:

 1. Erigo-universal-{version}.zip -- A universal installation you can use on 
   pretty much anything that supports Java. You will need the librxtx installed
   if you wish to use with Arduino.
 1. Erigo-Mac-{version}.zip -- A MacOS X app.
   
