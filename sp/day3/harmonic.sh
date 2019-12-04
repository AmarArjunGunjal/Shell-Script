#!/bin/bash

read -p "Enter Number" num
result=1;
for (( i=2 ; i<=$num; i++ ))
do
temp=$(echo 1/$i | bc -l )
result =$(echo $result $temp | awk '{print $1 + $2}')
done
echo "$result"

