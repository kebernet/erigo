#!/bin/sh
./gradlew licenseFormat test
RESULT=$?
exit $RESULT
