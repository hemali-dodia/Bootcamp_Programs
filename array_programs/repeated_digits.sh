#!/bin/bash -x

for (( i=0; i<=100; i++ ))
do
	num=$i
	rem=$(( $num % 10 ))
	num=$(( $num / 10 ))
	if [ $rem -eq $num ]
	then
		repeated_number[$i]=$i
	fi
done
echo ${repeated_number[@]}
