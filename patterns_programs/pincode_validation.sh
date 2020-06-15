#!/bin/bash -x

shopt -s extglob

pin='123 456'

if [[ $pin =~ ^[0-9]{3}[\ ][0-9]{3}$ ]];
then
	echo "yes"
else
	echo "no"
fi
