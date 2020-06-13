#!/bin/bash -x

read -p "enter number for table of power of 2: " n;
condition=$((2**$n))
echo $condition
res=0

for (( i=$res; i<$condition; i++ ))
do
	res=$((2**$i))
	echo $res
done

:'
with while loop
count=1
while [ $res -le $condition ]
do
	res=$((2**$count))
	((condition--))
	((count++))
	echo $res
done
'
