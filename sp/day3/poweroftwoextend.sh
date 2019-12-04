#!/bin/bash

read -p "Enter Number" num

pow=1;
i=1
while [[ $i != $num && $pow -lt 256 ]]
do
	i=$(($i+1))
	pow=$(($pow*2))
	echo "$pow"

done

