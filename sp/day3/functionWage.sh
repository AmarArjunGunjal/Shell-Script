#!/bin/bash -x
EMP_RATE_PER_HOUR=300
present=1
absent=0
totalSalary=0
day=0
hour=0
randomTime=$((RANDOM%2))

function getWorkingHours()
{
	if [ $randomTime -eq 1 ]
	then
		empWorkingHour=8
	else
		empWorkingHour=4
	fi

	echo $empWorkingHour
}
getWorkingHours

while [[ day -le 20 || hour -le 50 ]]
do
	workingHour=$empWorkingHour
	randomPresent=$((RANDOM%2))
	case  $randomPresent in
	$present)
		empWorkingHour=$( getWorkingHours )
		hour=$(($hour+$empWorkingHour))
	;;
	$absent)
	;;
	esac
dailySalary=$(($EMP_RATE_PER_HOUR * $empWorkingHour))
totalSalary=$(( $totalSalary + $dailySalary ))
day=$(($day+1))
done
echo "total salary :" $totalSalary

