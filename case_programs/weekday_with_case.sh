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
	case "$y" in
		1)	echo "Monday";;
		2)	echo "Tuesday";;
		3)	echo "Wednesday";;
		4)	echo "Thursday";;
		5)	echo "Friday";;
		6)	echo "Saturday";;
		7)	echo "Sunday";;
	esac
else
	echo "enter single digit number between 1 to 7 only"
fi
