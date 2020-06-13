#!/bin/bash -x

c1=0
c2=0
c3=0
c4=0
c5=0
c6=0
declare -i roll_die
for (( i=0; i<10; i++ ))
do
	roll_die[i]=$(($RANDOM%6+1))
	case "${roll_die[i]}" in
		1)	((c1++));;
		2)	((c2++));;
		3)	((c3++));;
		4)	((c4++));;
		5)	((c5++));;
		6)	((c6++));;
	esac
done
res[1]=$c1
res[2]=$c2
res[3]=$c3
res[4]=$c4
res[5]=$c5
res[6]=$c6
echo ${res[@]}
max=1
min=6
for (( i=1; i<=6; i++ ))
do
	if [ ${res[i]} -gt $max ]
	then
		max=${res[i]}
	elif [ ${res[i]} -lt $min ]
	then
		min=${res[i]}
	fi
done

echo $max $min
