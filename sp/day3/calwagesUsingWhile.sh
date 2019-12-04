#!/bin/bash -x
EMP_RATE_PER_HOUR=3000
fullTime=2
partTime=1
ftimetotalSalary=0;
ptimetotalSAlary=0;

	while [[ empWorkingHr -lt 50 || days -lt 20 ]]
	do
	days=$(( $days + 1 ))
	empPresent=$(( RANDOM%3 ))
	case  $empPresent in
	$fullTime)

		empWorkingHour=8
		ftimeDailySalary=$((EMP_RATE_PER_HOUR * empWorkingHour ))
		ftimetotalSalary=$(( $ftimetotalSalary + ftimeDailySalary ))
		empWorkingHr=$(( $empWorkingHr + $empWorkingHour ));;
	$partTime)
		empWorkingHour=4
		ptimeDailySalary=$(( EMP_RATE_PER_HOUR * empWorkinHour ))
		ptimetotalSAlary=$(( $ptimetotalSAlary + ptimeDailySalary ))
		empWorkingHr=$(( $empWorkingHr + $empWorkingHour ));;

	*)

		empWorkingHour=0;;

esac
#dailySalary=$((EMP_RATE_PER_HOUR*empWorkingHour))
#totalSalary=$(($totalSalary + $dailySalary )) 
done

