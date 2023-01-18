#!/bin/bash

# This BASH script runs the ADB command to show the serial numbers of the connected devices
# and it uses that to run commands which install the 2 Android apps we use for testing.


# Grab the serial number from the output
SERIAL=$(./adb devices | tail -n 2 | fold -w 15 -s | head -c 15)

# Use that serial number as a parameter to install the .apk's to the phone
./adb -s $SERIAL install com.gombosdev.ampere.apk
./adb -s $SERIAL install com.idea.PhoneDoctorPlus.apk
