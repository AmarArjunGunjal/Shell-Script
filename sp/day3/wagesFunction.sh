#!/bin/bash -x
EMP_RATE_PER_HOUR=3000
fullTime=0
partTime=1
TotalSalary=0;
DailySalary=0
hour=0;

randomTime=$((RANDOM%2))

function getWorkingHour()
{
	if [ $randomTime -eq 1 ]
	then
		empWorkingHour=8
	else
		empWorkingHour=4

	fi
	echo empWorkingHour
}

getWorkingHour


	while [[ empWorkingHr -lt 50 || days -lt 20 ]]
	do
	day=$((day+1))
	workingHour=$empWorkingHour
	randomPresent=$((RANDOM%2))
	case $randomPresent in


	$fullTime)

		empWorkingHour=$( getWorkingHour )
		hour=$(( $hour + $empWorkingHour ));;

	$partTime)
		empWorkingHour=$( getWorkingHour )
		hour=$(( $hour + $empWorkingHour ));;

	*)

		empWorkingHour=0;;

esac

DailySalary=$(($EMP_RATE_PER_HOUR * $empWorkingHour ))
TotalSalary=$(( $TotalSalary + $DailySalary ))

done
echo "Total Salary"$TotalSalary

