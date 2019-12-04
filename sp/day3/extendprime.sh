#!/bin/bash -x

read -p "enter the input to check if it is a prime number or not " number
numValue=$(($number/2))
for((i=2; i<=$numValue; i++))
do
	value=$(($number%$i))
	if [ $value -eq 0 ]
	then
	flag="false"
	break
	else
	flag="true"
	fi
done

if [ $flag == "true" ]
then
	echo "yes,it is a prime number"
else
	echo "no, it is not a prime number"
fi

