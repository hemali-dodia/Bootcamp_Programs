#!/bin/bash -x

_day=$(date '+%d')
_month=$(date '+%m')

if [ $_month -ge 03 -o $_day -ge 20 ]
then
	if [ $_month -le 06 -o $_day -le 20 ]
  	then
		echo "True"
	else
		echo "False"
	fi
fi
