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
	if [ $nd -eq 0 ]
	then
		echo "zero"
	elif [ $nd -eq 1 ]
	then
		echo "one"
	elif [ $nd -eq 2 ]
	then
		echo "two"
	elif [ $nd -eq 3 ]
	then
		echo "three"
	elif [ $nd -eq 4 ]
	then
		echo "four"
	elif [ $nd -eq 5 ]
	then
		echo "five"
	elif [ $nd -eq 6 ]
	then
		echo "six"
	elif [ $nd -eq 7 ]
	then
		echo "seven"
	elif [ $nd -eq 8 ]
	then
		echo "eight"
	elif [ $nd -eq 9 ]
	then
		echo "nine"
	fi
else
	echo "enter single digit number"
fi
