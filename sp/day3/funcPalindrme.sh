#!/bin/bash

read -p "Enter 1st Number" num1
val2=$num1;
sum=0;
function isPalindrome()
{
	while [ $num1 -gt 0 ]
	do
	temp=$(($num1%10))
	sum=$((($sum*10)+temp))
	num1=$(($num1/10))

	done
	echo $sum

}

val=$(isPalindrome $num1 )

if [ $val2 -eq $val ]
then
echo "Palindrome NUmber"
else
echo "Not Palindrome Number"
fi
