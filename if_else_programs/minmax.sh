#!/bin/bash -x

max=0
for((i=0;i<5;i++))
do
	n=$(($RANDOM%1000+99))
	arr[i]=$n
done

for((i=0;i<5;i++))
do
	if [ ${arr[i]} -gt $max ]
	then
		max=${arr[i]}

	else
		min=${arr[i]}

	fi
done
echo "min value is $min and max value is $max"
