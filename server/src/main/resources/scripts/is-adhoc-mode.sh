#!/usr/bin/env bash

INTERFACE=$1

doDarwin() {
    exit 0;
}

doLinux() {
    EXPRESSION="/iface $INTERFACE .*/,/wireless-mode .*/!d"
    ACTIVE=`cat /etc/network/interfaces | sed "${EXPRESSION}" | grep 'wireless-mode ad-hoc' | wc -l | tr -d '[:space:]'`
    if [ "$ACTIVE" == "1" ]; then
        echo "${INTERFACE} UP"
        exit 0
    else
        echo "${INTERFACE} DOWN"
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