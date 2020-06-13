#!/bin/bash


a=$(($RANDOM%2))

if [ $a == 0 ]
then
	echo "head"
else
	echo "tail"
fi

