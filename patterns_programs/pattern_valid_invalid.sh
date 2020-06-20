#!/bin/bash -x

pattern="^([0-9]{3}*[a-zA-Z])[0-9]*5$"
word="012abck2"

if [[ $word =~ $pattern ]];
then
	echo yes
else
	echo no
fi
