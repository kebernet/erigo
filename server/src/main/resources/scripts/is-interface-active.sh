#!/usr/bin/env bash

INTERFACE=$1

doDarwin() {
    EXPRESSION="/$INTERFACE:/,/status: .*/!d"
    ACTIVE=`ifconfig | sed "${EXPRESSION}" | grep 'status: active' | wc -l | tr -d '[:space:]'`
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

doLinux(){

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