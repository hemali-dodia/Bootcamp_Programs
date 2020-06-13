#!/bin/bash -x

read -p "range for prime number: " l u;

Flag=0
for (( i=$l; i<=$u; i++ ))
do
	for (( j=2; j<$i; j++ ))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			Flag=1
		break
		else
			Flag=0
		fi
	done
	if [ $Flag -eq 1 ]
	then
		echo "$i is not prime number"
	else
		echo "$i is prime number"
	fi
done
