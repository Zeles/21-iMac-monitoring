#!/bin/bash
Serialnumber=$(ioreg -l | grep IOPlatformSerialNumber | sed "s/ \{1,\}/ /g" | awk '{ print $4 }' | sed 's/\"//g')

#Output
echo iMacSerialNumber,Serial=$Serialnumber status=1