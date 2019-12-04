#!/bin/bash

low=0;
high=100;
while [ low != high ]
do
mid=$((($low + $high )/2));
read -p " Enter 1 if no is between $low    $mid and Enter 2 if no is between $(($mid+1))     $high  ,,,,Enter 3 if $mid=num" choice

case $choice in

1)
	high=$mid;;

2)
	low=$(($mid+1));;

3)	break;;

esac
done
echo "$mid"



