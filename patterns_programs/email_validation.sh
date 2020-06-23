#!/bin/bash -x

shotp -s extglob
function email_varification()
{
	emailpattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+\.[0-9a-zA-Z]{2,4}$"
	if [[ $email =~ $emailpattern ]]
	then
		echo "valid email"
	else
		echo "invalid email"
	fi
}
read -p "enter your email: " email
email_varification $email
