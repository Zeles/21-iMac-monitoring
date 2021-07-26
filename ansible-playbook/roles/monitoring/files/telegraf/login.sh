#!/bin/bash
Login=$(who | grep console | awk '{print $1}')
LoginBool=0

if [ -z "$Login" ]
then
	Login=empty
	LoginBool=0
else
	LoginBool=1
fi

#Output
echo iMacUser,login=$Login status=$LoginBool
