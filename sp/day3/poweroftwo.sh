#!/bin/bash -x

read -p "Enter number" num
pow=1;
for(( i=0; i<=$num; i++ ))
do
if [ $i -le $num ]
then
echo "$pow"
pow=$(($pow*2)) 
fi
done

