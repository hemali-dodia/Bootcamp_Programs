#!/bin/bash -x

sum=0
echo "enter 5, 2digit numbers:"

for((i=1;i<=5;i++))
do
	n=$(($RANDOM%10))
	sum=$((sum + n))
done
n=5
avg=`echo $sum $n | awk '{num1=$1;num2=$2; print num1,num1/num2}'`

