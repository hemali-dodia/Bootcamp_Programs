#!/bin/bash -x
read -p "enter number: " n;
res=0
count=1
x=256
condition=$((2**$n))
while [ $res -le $condition -a $condition -le $x ]
do
        res=$((2**$count))
        ((condition--))
        ((count++))
        echo $res
done

