#!/bin/bash -x

read -p "enter number for factorial: " n;
Fact=1
for (( i=1; i<=n; i++ ))
do
	Fact=$(($i*$Fact))
done
echo "factorial of $n is " $Fact
