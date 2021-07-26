#!/bin/bash
Keyboard=$(sudo system_profiler SPUSBDataType 2> /dev/null | grep 'Keyboard')
KeyboardBool=0

Mouse=$(sudo system_profiler SPUSBDataType 2> /dev/null | grep 'Mouse')
MouseBool=0

USBStorage=$(sudo system_profiler SPUSBDataType 2> /dev/null | grep 'Mount Point:')
USBStorageBool=0

SDStorage=$(system_profiler SPCardReaderDataType 2> /dev/null | grep 'Mount Point:')
SDStorageBool=0

#Check usb keyboard plug
if [ -z "$Keyboard" ]
then
	KeyboardBool=0
else
	KeyboardBool=1
fi

#Check usb mouse plug
if [ -z "$Mouse" ]
then
	MouseBool=0
else
	MouseBool=1
fi

#Check usb storage plug
if [[ -ne $USBStorage ]]
then
	USBStorageBool=1
else
	USBStorageBool=0
fi

#Check sd card storage plug
if [[ -ne $SDStorage ]]
then
	SDStorageBool=1
else
	SDStorageBool=0
fi

#Output
echo iMacPeriphery,Type="Keyboard" status=$KeyboardBool
echo iMacPeriphery,Type="Mouse" status=$MouseBool
echo iMacPeriphery,Type="USBStorage" status=$USBStorageBool
echo iMacPeriphery,Type="SDStorage" status=$SDStorageBool
