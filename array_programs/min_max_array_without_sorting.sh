#!/bin/bash -x

#for 3 digit number
Y=999 #i.e. upper limit
X=100 #i.e. lower limit
DIFF=$(($Y-$X+1)) #for generating value in range
#generating array
for (( i=0; i<10; i++ ))
do
	random_number=$(($(($RANDOM%$DIFF))+$X))
	arr[$i]=$random_number
done
#finding 2nd largest value
max_1=0
max_2=0
for (( i=0; i<10; i++ ))
do
	if [ ${arr[i]} -gt $max_1 ]
	then
		max_2=$max_1
		max_1=${arr[i]}
	elif [ ${arr[i]} -gt $max_2 -a ${arr[i]} -ne $max_1 ]
	then
		max_2=${arr[i]}
	fi
done
min_1=$max_2
for (( i=0; i<10; i++ ))
do
	if [ ${arr[i]} -lt $min_1 ]
	then
		min_2=$min_1
		min_1=${arr[i]}
	elif [ ${arr[i]} -lt $min_2 -a ${arr[i]} -ne $min_1 ]
	then
		min_2=${arr[i]}
	fi
done
echo $max_2 " is 2nd largest value"
echo $min_2 " is 2nd smallest value"
