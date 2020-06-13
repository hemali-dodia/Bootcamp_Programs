#!/bin/bash -x
in2ft=0.0833333
read -p "enter your value for conversion from inch to ft.": a x;
conv=`echo $in2ft $x | awk '{num1=$1;num2=$2; print num1,num1*num2}'`
c=$(($a+$x))
echo " vale of c is $c"
echo "$conv ft."

read -p "enter your number of plots: ": y;
echo "calculating area of $y plots of area 40*60ft is"

area=$(($y*4047))

echo "$area is area of $y plot in acre"
