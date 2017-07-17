Erigo
=====

_Latin - Verb_
_ērigō (present infinitive ērigere, perfect active ērexī, supine ērectum); third conjugation_
 
 * _I raise, build, set up, or erect_
 * _I arouse, excite or stimulate_
 
Why
---
 
With the rise of semi-pro and hobbyist electronics platforms like the Raspberry
Pi or the Arduino, more people than ever are making IoT type devices for fun or
profit. These are great for the maker, but if you want to, say, give them as a
gift, or don't want to be bothered with software, the user experience for these
things is pretty terrible.

To help overcome this, Erigo is a generic suite of protocols and applications 
that can give your IoT project a more user-friendly and professional "out-of-box"
experience. You want your IoT software project to have a consumer grade setup 
experience? Erigo is there.
 
What
----

This is a single project that includes several subprojects.
 
 1. desktop:  This is a desktop application for Win/Mac/Linux that will use 
    MDNS to find "Erigo Compatible" devices on your network, or connected to your
    USB/serial ports, and let you configure their settings. Need to bootstrap 
    the SSID/Password for your ESP8266/ESP32 project? Plug it into your computer
    and run the Erigo app.
 1. android, ios: Mobile applications that will do network-based configurations.
 1. client-framework: This is a framework for a Model-View-Presenter application
    that is shared among the desktop and mobile applications.
 1. server: A service you can install on Linux-based devices that will (a) check
    for network connectivity. If it is unavailable, will create new SSID called 
    "DeviceName-{Last 4 of MAC}.erigo". The mobile applications will auto-discover
    this, or you can join it with the desktop app to bootstrap your device onto
    a new network. It can also handle custom settings and services. This is a 
    pattern I totally cribbed from the Amazon Echo. The difference here is we 
    are looking for the ".erigo" ending, rather than a device type for the network 
    id.
 1. arduino: A sample project and code that implements the Erigo protocol over 
    the USB/serial interface and lets you bootstrap settings to be stored in the
    EEPROM.
    
See the README under the various subprojects for more information.

How
---

Erigo is based on a couple of different concepts: devices and settings.

A device is, I dunno, put it together sherlock. It has a id. It has an address
(which might be http(s):// or serial://) and some meta-data. Erigo will then poll
for self-describing JSON data that will tell it about the device. Other than 
the address, a device has:

```
{ 
    "id" : something,
    "type" : something,
    "manufacturer" : something,
    "thumbnailUrl" : something,
    "settingsUrl" : something
}
```

It is presumed that unless they include a protocol specification, the *Url 
parameters can be relative to the device address.

For MulticastDNS devices, they should advertise a service with subdomain:

```
    "_v1._iotconfig._tcp.local."
```

And a path parameter that returns the ``device`` descriptor at ``path=whatever``.
For serial port devices, the settingsUrl attribute is ignored, the app will just
send ``#iot-cfg: Hello`` as it connects. It will look for
 ``#iot-config: Hello v1`` as a response, and will then send 
 ``#iot-config: device`` to query for the device struct.
 ``#iot-config: settings`` to query the settings struct.
 
 Whether you get the settings from a URL, or over the serial port, they look like this:
 
 ```
 {
    "name": "something that describes your device and what the user is doing.",
    "groups" : [
        {
            "index": 0 // this should be considered a suggestion of the order.
            "id": "foo" 
            "name" :  "bar" //some text about this group of settings, like "This is how your device will connect to the network.",
            "settings" : [
                {
                    "id" : "Blah" ,// settings names need to be unique across device
                    "name": "Blah in English", // the label for the setting
                    "type" : "string",  // a datatype for a setting
                    "validationExpression" : ".*" // a regular expression to validate a string version of the settings.
                     // this value may be dependent on the client app supporting the "type" datatype.
                }
            ]
        }
    ]
 }

```
 
NB: Everthing about Erigo over the serial port will be prepeded with ``#iot-config:``. 
So if you want to do debug logging, or support other things over the serial stream, 
no biggie. Also, all JSON structs should be single-line.

Once you have the name of the settings, you need to update 1..n of them

Who
---

Robert "kebernet" Cooper is currently the sole developer. I work for Thoughtworks, but this 
project isn't endorsed, condoned, blah blah blah, my employer.

When
----

Copyright (c) 2017 Robert Cooper, all rights reserved, because why not.