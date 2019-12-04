#!/bin/bash

head=0;
tail=0;



while [[ $head -lt 12 && $tail -lt 12 ]]
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		head=$(($head+1))
		else
		tail=$(($tail+1))
	fi
done
	if [ $head -ge 12 ]
	then
	echo "head win"
	else
	echo "tail win"
	fi
