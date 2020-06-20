#!/bin/bash -x

shopt -s extglob

read -p "enter pin code:" pin

if [[ $pin =~ ^[0-9]{3}[\ ][0-9]{3}$ || $pin =~ ^[0-9]{6}$ ]];
then
	echo "yes"
else
	echo "no"
fi
