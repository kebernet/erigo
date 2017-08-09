#!/usr/bin/env bash

ifconfig {{{wlanInterface}}} down
service stop dhcpd

