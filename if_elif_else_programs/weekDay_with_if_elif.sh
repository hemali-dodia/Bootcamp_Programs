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
if [ $nd -eq 1 -a $y -le 6 -a $y -gt 0 ]
then
	if [ $y -eq 1 ]
	then
		echo "Monday"
	elif [ $y -eq 2 ]
	then
		echo "Tuesday"
	elif [ $y -eq 3 ]
	then
		echo "Wednesday"
	elif [ $y -eq 4 ]
	then
		echo "Thursday"
	elif [ $y -eq 5 ]
	then
		echo "Friday"
	elif [ $y -eq 6 ]
	then
		echo "Saturday"
	elif [ $y -eq 7 ]
	then
		echo "Sunday"
	fi
else
	echo "enter single digit number between 1 to 7 only"
fi
