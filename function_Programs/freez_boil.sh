#!/bin/bash -x

function degF(){

	local fer=$1
	if [ $fer -ge 32 -a $fer -le 212 ]
	then
		echo $cel | awk '{num1=$1; print val=((num1*9/5)+32)}'
	else
		echo "enter value between 32 to 212"
	fi
}

function degC(){
	local cel=$1
	if [ $cel -ge 0 -a $cel -le 100 ]
	then
		echo $fer | awk '{num1=$1; print val=((num1-32)*5/9)}'
	else
		echo "enter value between 0 to 100"
	fi
}

read -p "enter value you want to convert: " val;
read -p "enter your choice, 1 for degF & 2 for degC: " ch;
case "$ch" in
	1)	res="$( degF $val )";;
	2)	res="$( degC $val )";;
	*)	echo "enter valid option";;
esac
