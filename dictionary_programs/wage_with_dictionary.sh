#!/bin/bash -x

# CONSTANTS
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=4
EMP_RATE_PER_HOUR=20
NUM_WORKING_DAYS=20

# Variable
totalEmpHr=0
totalWorkingDays=0
totalWorkingHours=0

declare -i workHour
workHour[IS_PART_TIME]=4
workHour[IS_FULL_TIME]=8
workHour[DEFAULT]=0
# Function to get working hours
function getWorkingHours(){
	case $1 in
		$IS_PART_TIME)	workHours=${workHour[IS_PART_TIME]};;
		$IS_FULL_TIME)	workHours=${workHour[IS_FULL_TIME]};;
		*)		workHours=${workHour[DEFAULT]};;
	esac
	echo $workHours
}

while [ $totalWorkingHours -lt $MAX_HRS_IN_MONTH ] && [ $totalWorkingDays -lt $NUM_WORKING_DAYS ]
do
	((totalWorkingDays++))
		workHours="$( getWorkingHours $((RANDOM%3)) )"
		totalWorkingHours=$(( $totalWorkingHours + $workHours ))
		dailyWage[total_Working_Days]=$(($workHours*$EMP_RATE_PER_HOUR))
done

totalSalary=$(($totalWorkingHours*$EMP_RATE_PER_HOUR))

echo "Monthly Salary of person is " $totalSalary

declare -A wage
wage[work_hours]=$workHours
wage[total_salary]=$totalSalary
wage[total_work_hour]=$totalWorkingHours
wage[daily_wage]=${dailyWage[@]}
echo ${wage[@]}

