#!/bin/bash -x
cash=100;
goal=200;
win=o;
loss=0;
i=0;


	while [[ $cash -ge 1 && $cash -lt $goal ]]
	do
		random=$((RANDOM%2))
		if [ $random -eq 1 ]
		then
			#echo "win"
			win=$(($win+1))
			cash=$(($cash+1))
		else
			#echo "loss"
			loss=$(($loss+1))
			cash=$(($cash-1))
		fi
	done

echo " win=====$win"
echo "loss=====$loss"
echo "cash=====$cash"
