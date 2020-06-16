#!/bin/bash -x
shopt -s extglob
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


