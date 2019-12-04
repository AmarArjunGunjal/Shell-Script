#!/bin/bash

read -p "Enter number" num
fact=num;
for (( i=$num-1; i>=1; i-- ))
do
fact=$(( $fact * $i ))
done

echo "$fact"
