#!/usr/bin/env bash
ifconfig up {{{wlanInterface}}}
service dhcpd start