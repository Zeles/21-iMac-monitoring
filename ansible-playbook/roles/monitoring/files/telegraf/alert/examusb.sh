#!/bin/bash
ExamFile=/Users/bocal/exam
ExamStatus=0

USBStorage=$(sudo system_profiler SPUSBDataType 2> /dev/null | grep 'Mount Point:')
USBStorageBool=0

SDStorage=$(system_profiler SPCardReaderDataType 2> /dev/null | grep 'Mount Point:')
SDStorageBool=0

if [ -f $ExamFile ]
then
	ExamStatus=1
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

let status=$ExamStatus+$USBStorageBool+$SDStorageBool

if [ $status -ge "2" ]
then
	status=1
else
	status=0
fi

echo iMacExamStorage status=$status