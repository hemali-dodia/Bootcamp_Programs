#!/bin/bash -x

read -p "range for prime number: " x;

Flag=0
for (( i=$2; i<=$x; i++ ))
do
	if [ $(($x%$i)) -eq 0 ]
	then
		Flag=1
	fi
done
if [ $Flag -eq 1 ]
then
	echo "$i is not prime number"
else
	echo "$i is prime number"
fi

