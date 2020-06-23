#!/bin/bash -x

shopt -s extglob

function pincode_validation()
{
	if [[ $pin =~ ^[0-9]{3}[\ ][0-9]{3}$ || $pin =~ ^[0-9]{6}$ ]];
	then
		echo "yes"
	else
		echo "no"
	fi
}
read -p "enter pin code:" pin
pincode_validation $pin
