#!/usr/bin/env bash
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

#
# Returns 0 for true, -1 for false
#

INTERFACE=$1

doDarwin() {
    ACTIVE=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep "op mode: IBSS" | wc -l | tr -d '[:space:]'`
    if [ "$ACTIVE" == "1" ]; then
        echo "${INTERFACE} YES"
        exit 0
    else
        echo "${INTERFACE} NO"
        exit -1;
    fi
}

doLinux() {
    EXPRESSION="/iface $INTERFACE .*/,/wireless-mode .*/!d"
    ACTIVE=`cat /etc/network/interfaces | sed "${EXPRESSION}" | grep 'wireless-mode ad-hoc' | wc -l | tr -d '[:space:]'`
    if [ "$ACTIVE" == "1" ]; then
        echo "${INTERFACE} YES"
        exit 0
    else
        echo "${INTERFACE} NO"
        exit -1;
    fi
}

doCygwin() {
    # TODO
    exit 0
}

doMINGW(){
    # TODO
    exit 0
}

case "`uname`" in
  CYGWIN* )
    doCygwin
    ;;
  Darwin* )
    doDarwin
    ;;
  MINGW* )
    doMINGW
    ;;
  Linux* )
    doLinux
    ;;
esac