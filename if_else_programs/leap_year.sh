#!/bin/bash -x

read -p "enter year: " year;

if [ $(($year % 4)) -eq 0 ]
then
	if [ $(($year % 100)) -eq 0 ]
	then
		if [ $(($year % 400)) -eq 0 ]
		then
			echo "leap year"
		else
			echo "not leap year"
		fi
	fi
fi
