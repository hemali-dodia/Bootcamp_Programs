#!/bin/bash -x
read -p "enter number: " n;
condition=$((2**$n))
echo $condition
res=0
for (( i=$res; i<$condition; i++ ))
do
        res=$((2**$i))
        echo $res
done

