#!/bin/bash -x
EMP_RATE_PER_HOUR=3000
fullTime=2
partTime=1
ftimetotalSalary=0;
ptimetotalSAlary=0;

	for (( i=0; i<=20 ; i++ ))
	do
	empPresent=$(( RANDOM%3 ))
	case  $empPresent in
	$fullTime)

		empWorkingHour=8
		ftimeDailySalary=$((EMP_RATE_PER_HOUR * empWorkingHour ))
		ftimetotalSalary=$(( $ftimetotalSalary + ftimeDailySalary ));;
	$partTime)
		empWorkinHour=4
		ptimeDailySalary=$(( EMP_RATE_PER_HOUR * empWorkinHour ))
		ptimetotalSAlary=$(( $ptimetotalSAlary + ptimeDailySalary ));;

	*)

		empWorkingHour=0;;

esac
#dailySalary=$((EMP_RATE_PER_HOUR*empWorkingHour))
#totalSalary=$(($totalSalary + $dailySalary )) 
done

