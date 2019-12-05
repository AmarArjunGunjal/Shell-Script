#!/bin/bash

array=( 9 -8 3 2 1 5 8 -2 -1 -5 )

for (( i=0; i<${#array[@]}; i++ ))
do
	for (( j=$i+1; j<${#array[@]}; j++ ))
	do
		for (( k=$j+1; k<${#array[@]}; k++ ))
		do
			if [ $((${array[i]}+${array[j]} +${array[k]} )) -eq 0 ]
			then
				echo "${array[$i]}+${array[$j]}+${array[k]}=0"
			fi
		done
	done
done
