#!/bin/bash -x

echo "think number between 1 to 100"
u=100
l=1
Flag=0
while [ $Flag -ne 1 ]
do
	m=$((($l+$u)/2))
	read -p "is your number $m?" ans;
	if [ $ans -eq 1 ]
	then
		Flag=1
		break
	fi
	read -p "greater than $n?" ans;
	if [ $ans -eq 1 ]
	then
		Flag=0
		l=$m
		m=$((($l+$u)/2))
	else
		Flag=0
		u=$m
		m=$((($l+$u)/2))
	fi
done
