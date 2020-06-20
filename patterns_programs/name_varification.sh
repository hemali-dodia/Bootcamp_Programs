#!/bin/bash -x

shopt -s extglob

function valFirstLastName(){
        local Name=$1
	F_L_Pattern="^[A-Z]{1}[a-z]{2,}$"
        #F_L_Pattern=^[A-Z][a-z]{2,}$"
        if [[ $Name =~ $F_L_Pattern ]]
        then
                echo "Accepted"
        else
                echo "Invalid Name, 1st char should be cap, min 3 char required"
        fi
}

read -p "enter first name and last name:" First_name Last_name;

firstName="$( valFirstLastName $First_name )"
lastName="$( valFirstLastName $Last_name )"

