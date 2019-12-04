#!/bin/bash

read -p "Enter Number" num
pow=1;
while [ i < $num || $num < 257 ]
do
	echo "$pow"
	pow=$pow * 2;
	i=$(($i+1))
done

