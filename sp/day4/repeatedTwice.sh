#!/bin/bash

counter=0;
last=100;

for (( first=1 ; first<$last; first++ ))
do
	if [ $(($first%11)) -eq 0 ]
	then
	array[(counter++)]=$first;
	fi
done

echo "Array is"${array[@]}
