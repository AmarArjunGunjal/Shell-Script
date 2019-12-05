#!/bin/bash -x
EMP_RATE_PER_HOUR=3000
parTime=1
fullTime=0
totalSalary=0;
#dailySalary=0
hour=0;
counter=0;
day=0
randomTime=$((RANDOM%2))

function getWorkingHour()
{
	if [ $randomTime -eq 1 ]
	then
		empWorkingHour=8
	else
		empWorkingHour=4

	fi
	echo $empWorkingHour
}

getWorkingHour

	declare -A wageDictionary
	while [[ hour -lt 50 && day -lt 20 ]]
	do
	day=$((day+1))
	workingHour=$empWorkingHour
	randomPresent=$((RANDOM%2))
	case $randomPresent in


	$partTime )

		empWorkingHour=$( getWorkingHour )
		hour=$(( $hour + $empWorkingHour ));;

	$fullTime )
		empWorkingHour=$( getWorkingHour )
		hour=$(( $hour + $empWorkingHour ));;

	*)

		empWorkingHour=0;;

	esac



DailySalary=$(($EMP_RATE_PER_HOUR * $empWorkingHour ))
dailysalaryArray[((counter++))]=$DailySalary
#DAY[((day ))]=$DailySalary

totalSalary=$(( $totalSalary + $DailySalary ))
totalsalaryArray[((counter++))]=$totalSalary

dayval=$"DAY_$day"
wageDictionary["$dayval"]=$"$DailySalary   $totalSalary" 

done
#echo "Total Salary"$TotalSalary

#echo "daily salary wage"${dailysalaryArray[@]}
#echo "Total salary Array"${totalsalaryArray[@]}=$totalSalary
echo "${wageDictionary[@]}"
for (( i=1; i<=20; i++ ))
do
	echo "day $i :  ${wageDictionary[DAY_$i]}"
done
