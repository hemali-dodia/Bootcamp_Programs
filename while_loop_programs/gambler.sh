#!/bin/bash -x

Balance_Rs=100
Bet_Rs=1
Goal=0
Won_Bet=0
Num_bet=0
min_bal=0
while [ $min_bal -lt $Balance_Rs -a $Goal -lt 200 ]
do
	((Num_bet++))
	bet=$(($RANDOM%2))
	if [ $bet -eq 1 ]
	then
		((Won_Bet++))
		((Goal++))
	else
		((min_bal++))
	fi
done
echo "$Num_bet bets played"
echo "$Won_Bet bets won"
echo "$Goal is amount won"
echo "$Balance_Rs is balanced"
