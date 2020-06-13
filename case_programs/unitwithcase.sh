#!/bin/bash -x
ft2in=12
in2ft=0.0833333
mt2ft=3.28084
ft2mt=0.3048

read -p "enter your value for conversion 1. for ft to in. 2. in to ft 3. meter to ft 4. ft to meter: " x;
read -p "enter value for conversion: " y;
case "$x" in
	1)	ans=$(($ft2in*$y));;
	2)	ans=`echo $in2ft $y | awk '{num1=$1;num2=$2; print num1,num1*num2}'`;;
	3)	ans=`echo $mt2ft $y | awk '{num1=$1;num2=$2; print num1,num1*num2}'`;;
	4)	ans=`echo $ft2mt $x | awk '{num1=$1;num2=$2; print num1,num1*num2}'`;;
	*)	echo "invalid option";;
esac
echo "$y is converted to $ans"
