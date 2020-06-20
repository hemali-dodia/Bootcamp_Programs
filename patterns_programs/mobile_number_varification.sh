#!/bin/bash -x

shopt -s extglob

function ValMobileNumber(){
        local CC=$1
        local Num=$2
        CodePat="^[0-9+]{3}$"
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

