#!/bin/bash -x

shopt -s extglob

pin='123 456'

if [[ $pin =~ ^[0-9]{3}[\ ][0-9]{3}$ || $pin =~ ^[0-9]{6}$ ]];
then
	echo "yes"
else
	echo "no"
fi
