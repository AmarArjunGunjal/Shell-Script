#!/bin/bash -x

read -p "Enter Number " number
nvalue=$(($number/2))
for((i=2; i<=$nvalue; i++))
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
	echo " prime number"
else
	echo " not a prime number"
fi
