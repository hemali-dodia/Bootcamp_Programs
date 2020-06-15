#!/bin/bash -x

pat="^([0-9]*[a-zA-Z]){3,}[0-9]*$"
any="18aaa1"
if [[ $any =~ $pat ]];
then
	echo yes
else
	echo no
fi
