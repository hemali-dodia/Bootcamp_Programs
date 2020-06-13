#!/bin/bash -x

jan=0
feb=0
mar=0
apr=0
may=0
jun=0
jul=0
aug=0
sep=0
oct=0
nov=0
dec=0

declare -A birth_month

for (( i=1; i<=50; i++ ))
do
	month=$(($RANDOM%12+1))
        birth_month[$i]=$month
	case "${birth_month[i]}" in
		1)	jan=$(($jan+1))
			echo $jan;;
		2)	feb=$(($feb+1))
			echo $feb;;
		3)	mar=$(($mar+1))
			echo $mar;;
		4)	apr=$(($apr+1))
			echo $apr;;
		5)	may=$(($may+1))
			echo $may;;
		6)	jun=$(($jun+1))
			echo $jun;;
		7)	jul=$(($jul+1))
			echo $jul;;
		8)	aug=$(($aug+1))
			echo $aug;;
		9)	sep=$(($sep+1))
			echo $sep;;
		10)	oct=$(($oct+1))
			echo $oct;;
		11)	nov=$(($nov+1))
			echo $nov;;
		12)	dec=$(($dec+1))
			echo $dec;;
	esac
done

declare -A mon
mon[jan]=$jan
mon[feb]=$feb
mon[mar]=$mar
mon[apr]=$apr
mon[may]=$may
mon[jun]=$jun
mon[jul]=$jul
mon[aug]=$aug
mon[sep]=$sep
mon[oct]=$oct
mon[nov]=$nov
mon[dec]=$dec
echo ${mon[@]}

max=0

for (( i=1; i<=12; i++ ))
do
	if [ "${mon[i]}" -gt $max ]
	then
		max=${mon[i]}
		val=${!mon[i]}
	fi
done
echo $max "and" $val

