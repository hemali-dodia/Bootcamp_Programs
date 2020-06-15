#!/bin/bash -x

countHead=0
countTail=0
echo $countHead $countTail

while [ $countHead -le 21 -o $countTail -le 21 ]
do
	a=$(($RANDOM%2))
	echo $a
	if [ $a == 0 ]
	then
		((countHead++))
		echo $countHead
	else
		((countTail++))
		echo $countTail
	fi
done

