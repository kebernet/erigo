#!/bin/bash

apt-get update
apt-get install dhcp3-server
apt-get install oracle-java8-jdk
update-alternatives --config javac
update-alternatives --config java

