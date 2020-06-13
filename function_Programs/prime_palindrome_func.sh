#!/bin/bash -x

function palindrome(){
	local reverse=0
	local N=$1
	local x=$N
	local Flag=1
	while [ $N -gt 0 ]
        do
                a=$(( $N % 10 ))
                N=$(( $N / 10 ))
                reverse=$(( $reverse * 10 + $a ))
        done
	if [ $reverse -eq $x ]
        then
		Flag=0
		echo $Flag
        else
                echo "$x is not palindrome"
        fi
}

function prime(){
	local pr=$1
	local Flag=0
	for (( i=2; i<$pr; i++ ))
	do
		if [ $(($pr%$i)) -eq 0 ]
		then
			Flag=1
		fi
	done
	if [ $Flag -eq 1 ]
	then
		echo "not prime"
	else
		echo $Flag
	fi
}
read -p "enter number to check its palindrome or not: " n;
pal="$( palindrome $n )"
prime="$( prime $n )"
if [ $prime -eq $pal ]
then
	echo "number is prime and palindrome"
fi
