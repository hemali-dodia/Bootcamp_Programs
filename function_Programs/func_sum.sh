#! /bin/bash -x

function Sum(){
	local a=$1
	local b=$2
	local c=0

	c=$(($a+$b))
	echo $c
}
a=5
b=9
result="$( Sum $a $b )"
e=5
f=6
result="$( Sum $a $b )"
