#!/bin/bash
productVersion=$(sw_vers -productVersion)
buildVersion=$(sw_vers -buildVersion)

echo iMacOsVersion,Version=$productVersion\($buildVersion\) status=1