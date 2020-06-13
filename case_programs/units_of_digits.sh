#!/bin/bash -x
read -p "enter number: " x;
nd=0
y=$x
while [ $x -gt 0 ]
do
	n=$(( $x % 10 ))
	x=$(( $x / 10 ))
	nd=$(( $nd + 1 ))
done

case "$nd" in
	1)	echo "unit";;
	2)	echo "ten";;
	3)	echo "hundred";;
	4)	echo "thousand";;
	*)	echo "$y is more than thousand";;
esac
