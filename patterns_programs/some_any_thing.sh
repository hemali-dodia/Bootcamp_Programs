#!/bin/bash -x

shopt -s extglob
read -p "enter word enging with thing " word

if [[ $word == +(some|any)thing ]];
then
	echo yes;
else
	echo no;
fi
