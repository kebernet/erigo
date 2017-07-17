#!/bin/bash
#
#     Copyright (c) 2017 Robert Cooper
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#


echo {{host_name}} > {{erigo.targetDirectory}}/boot/hostnames
echo {{host_name}} > {{erigo.targetDirectory}}/etc/erigo/devicename
hostname {{host_name}}
mv {{erigo.targetDirectory}}/keystore.jks {{erigo.targetDirectory}}/keystore.jks.backup-`date +%F`
keytool -genkey -dname "CN={{hostname}}, OU=Erigo, O=Raspberry Pi, L=Atlanta, ST=GA, C=US" -ext SAN=oid:{{host_name}}, dns:{{host_name}},dns:{{host_name}}.local,ip:{{erigo.hostAddress}},ip:127.0.0.1,dns:localhost -alias default -validity 9999 -keyalg RSA -keystore {{erigo.targetDirectory}}/keystore.jks -keypass erigo -storepass erigo