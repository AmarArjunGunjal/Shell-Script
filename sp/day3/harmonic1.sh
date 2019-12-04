#!/bin/bash

read -p "Enter number" num
for ((i=1;i<$num;i++))
do
	divValue=$(echo 1/$i | bc -l)
	harmonicSum=$(echo $divValuee + $harmonicSum | bc -l)
done
echo $harmonicSum
