#!/bin/bash -x
shopt -s extglob
function passwordVal(){
        local pw=$1
        passPattern1="^([A-Za-z0-9@#!]){8,}$"
	passPattern2="^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$"
	passPattern3="^[a-zA-Z0-9]*[0-9]+[a-zA-Z@#!]*$"
	passPattern4="^([a-zA-Z0-9]*)[^a-zA-Z_0-9\ ]([a-zA-Z0-9]*)$"
        if [[ $pw =~ $passPattern1 ]]
        then
		if [[ $pw =~ $passPattern2 ]]
		then

			if [[ $pw =~ $passPattern3 ]]
        	        then
				if [[ $pw =~ $passPattern4 ]]
				then
					echo "valid password"
				else
       		 	        	echo "invalid password"
	        		fi
			else
				echo "invalid3"
			fi
		else
			echo "invalid2"
		fi
	else
		echo "invalid1"
	fi
}
read -p "enter password: " password;
pswd="$( passwordVal $password )"
