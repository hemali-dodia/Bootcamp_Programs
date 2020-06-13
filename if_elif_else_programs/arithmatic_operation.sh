#!/bin/bash -x

read -p "enter 3 numbers: " val1 val2 val3;
res1=$(($val1+$val2*$va3))
res2=`echo $val1 $val2 $val3 | awk '{num1=$1;num2=$2;num3=$3; print num3+num1/num2}'`
res3=$(($val1%$val2+$val3))
res4=$(($val1*$val2+$val3))
echo "result of 1st eq" $res1 "result of 2nd eq" $res2 "result of 3rd eq" $res3 "result of 4th eq" $res4
echo "$res2 is min"
if [ $res1 -gt $res4 ]
then
	echo "$res1 is max"
else
	echo "$res4 is max"
fi
