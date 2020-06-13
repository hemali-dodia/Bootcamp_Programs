#!/bin/bash -x

read -p "enter value till harmonic number is needed: " n;
function harmonic(){
START=1
sum=0
for (( j=1; j<=$n; j++ ))
do
	div=`echo $START $j | awk '{num1=$2;num2=$1; print num2/num1}'`
	sum=`echo $sum $div | awk '{num1=$1;num2=$2; print num1+num2}'`
done
echo $sum
}

harmonic_number=$( harmonic $n )
echo $harmonic_number
