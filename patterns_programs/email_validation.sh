#!/bin/bash -x

shotp -s extglob

emailpattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[0-9a-zA-Z]{2,4}$"
read -p "enter your email: " email
if [[ $email =~ $emailpattern ]]
then
	echo "valid email"
else
	echo "invalid email"
fi
