#!/bin/bash -x

read -p "enter value till harmonic number is needed: " n;
START=1

for (( j=1; j<=$n; j++ ))
do
	echo $START $j | awk '{num1=$2;num2=$1; printf num3=$num2/$num1; printf $sum+=$num3}'
done
