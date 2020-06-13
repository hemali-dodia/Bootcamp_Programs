#!/bin/bash -x

read -p "enter name of folder:" x;
d="/Desktop/randtest/"
if [ "$d" -d "$x" ]
then
	echo "exist"
else
	mkdir $x;
fi
