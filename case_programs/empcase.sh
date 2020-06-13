#!/bin/bash -x

atten=$(($RANDOM%3))

case "$atten" in
	0)	salary=$((20*8));;
	1)	salary=$((20*4));;
	2)	salary=0;;
esac
echo $salary
