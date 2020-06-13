#!/bin/bash -x

array[0]=-9
array[1]=-2
array[2]=5
array[3]=-3
array[4]=4
len_arr=${#array[@]}
for (( i=0; i<$len_arr; i++ ))
do
	for (( j=$(($i+1)); j<$len_arr; j++ ))
	do
		for (( k=$(($j+1)); k<$len_arr; k++ ))
		do
			val=$((-1*${array[i]}))
			val1=$((${array[j]}+${array[k]}))
			if [ $val -eq $val1 ]
			then
				echo ${array[i]} ${array[j]} ${array[k]}
			else
				echo "no pairs found"
			fi
		done
	done
done
