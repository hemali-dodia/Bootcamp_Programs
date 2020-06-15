#!/bin/bash -x
read -p "enter 3 numbers: " val1 val2 val3;

declare -A result

result[res2]=`echo $val1 $val2 $val3 | awk '{num1=$1;num2=$2;num3=$3; print num3+num1/num2}'`
result[res3]=$(($val1%$val2+$val3))
result[res4]=$(($val1*$val2+$val3))
result[res1]=$(($val1+$val2*$val3))

arr_res[1]=${result[res2]}
arr_res[2]=${result[res1]}
arr_res[3]=${result[res3]}
arr_res[4]=${result[res4]}

j=0
#ascending order
for (( i=2; i<=4; i++ ))
do
	for (( j=2; j<=$(($i-1)); j++ ))
	do
		if [ ${arr_res[i]} -lt ${arr_res[j]} ]
		then
			temp=${arr_res[i]}
			arr_res[i]=${arr_res[j]}
			arr_res[j]=$temp
		fi
	done
done

echo ${arr_res[@]}
#descending order
temp=${arr_res[4]}
arr_res[4]=${arr_res[1]}
arr_res[1]=$temp
temp=${arr_res[2]}
arr_res[2]=${arr_res[3]}
arr_res[3]=$temp
echo ${arr_res[@]}
