#!/bin/bash -x
j=0
read -p "enter number for factorization: " n;
if [ $n -eq 1 ]
then
	echo "1 is not allowed"
else
	for (( i=2; i<$n; i++ ))
	do
		if [ $(($n%$i)) -eq 0 ]
		then
			fact[j]=$i
		fi
	((j++))
	done
fi
echo "factors are : " ${fact[@]}
