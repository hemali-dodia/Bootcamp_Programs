#!/bin/bash -x

c1=0
c2=0
c3=0
c4=0
c5=0
c6=0
declare -i roll_die
while [ 1 ]
do
	roll_die[$i]=$(($RANDOM%6+1))
	case "${roll_die[i]}" in
		1)	((c1++));;
		2)	((c2++));;
		3)	((c3++));;
		4)	((c4++));;
		5)	((c5++));;
		6)	((c6++));;
	esac
	if [ $c1 -eq 10 ]
	then
		break
	fi
	if [ $c2 -eq 10 ]
	then
		break
	fi
	if [ $c3 -eq 10 ]
	then
		break
	fi
	if [ $c4 -eq 10 ]
	then
		break
	fi
	if [ $c5 -eq 10 ]
	then
		break
	fi
	if [ $c6 -eq 10 ]
	then
		break
	fi
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

for (( j=1; j<=${#res[@]}; j++ ))
do
	if [ ${res[j]} -gt $max ]
	then
		max=${j}
	fi
	if [ ${res[j]} -lt $min ]
	then
		min=${j}
	fi
done
echo $max $min
