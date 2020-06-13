#!/bin/bash -x

month_num=0
declare -A months_of_individual
for (( i=1; i<=50; i++ ))
do
	val=$(((($RANDOM%12))+1))
	months_of_individual[person_$i]=$val
done


for (( i=1; i<=12; i++ ))
do
	echo "for month" $i
	for (( j=1; j<=50; j++ ))
	do
		if [ "${months_of_individual[person_$j]}" -eq $i ]
		then
			echo "individual" $j
		fi
	done
done
