#!/bin/bash -x
nd=0
read -p "enter single digit number: " x;
y=$x
while [ $x -gt 0 ]
do
	sd=$(( $x % 10 ))
	x=$(( $x / 10 ))
	nd=$(( $nd + 1 ))
done
if [ $nd -eq 1 ]
then
	case "$y" in
		0)	echo "zero";;
		1)	echo "one";;
		2)	echo "two";;
		3)	echo "three";;
		4)	echo "four";;
		5)	echo "five";;
		6)	echo "six";;
		7)	echo "seven";;
		8)	echo "eight";;
		9)	echo "nine";;
	esac
else
	echo "enter single digit number"
fi
