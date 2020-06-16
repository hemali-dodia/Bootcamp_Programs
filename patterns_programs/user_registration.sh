#!/bin/bash -x

shopt -s extglob

function valFirstLastName(){
	local Name=$1
	F_L_Pattern="^[A-Z][a-z]{2,}$"
	if [[ $Name =~ $F_L_Pattern ]]
	then
		echo "Accepted"
	else
		echo "Invalid Name, 1st char should be cap, min 3 char required"
	fi
}

read -p "enter first name and last name: " First_name Last_name;

firstName="$( valFirstLastName $First_name )"
lastName="$( valFirstLastName $Last_name )"

function validEmail(){
	local email=$1
	emailpattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[0-9a-zA-Z]{2,4}([.][a-zA-Z]{2})$"

	if [[ $email =~ $emailpattern ]]
	then
	        echo "valid email"
	else
	        echo "invalid email"
	fi

}
read -p "enter your email: " email
email_validation="$( validEmail $email )"

function ValMobileNumber(){
	local CC=$1
	local Num=$2
	CodePat="^[0-9]{2}$"
	NumPat="^[0-9]{10}$"
	if [[ $CC =~ $CodePat && $Num =~ $NumPat ]]
	then
		echo "valid mobile number"
	else
		echo "invalid mobile number"
	fi
}
read -p "enter mob number with country code: " Code Number;
mob_num="$( ValMobileNumber $Code $Number )"

function passwordVal(){
	local pw=$1
	passPattern="([A-Za-z0-9]){8,}$"
	if [[ $pw =~ $passPattern ]]
	then
		echo "valid password"
	else
		echo "invalid password"
	fi
}
read -p "enter password: " password;
pswd="$( passwordVal $password )"

