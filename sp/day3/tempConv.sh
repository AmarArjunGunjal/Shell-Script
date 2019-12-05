#!/bin/bash

echo "1. Tempeature To Celcius" num
echo "2. Celcius To Temperature" num

case $num in

1)
	function convertTempToCel(){
	read -p "Enter temperature " $temp1
	
