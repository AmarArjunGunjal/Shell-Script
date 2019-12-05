#!/bin/bash -x

read -p "Enter Number " number
nvalue=$(($number/2))

function isPrime()
{
for(( i=2; i<$nvalue; i++ ))
do
	value=$(($number%$i))
	if [ $value == 0 ]
	then
		flag="false"
		break
	else
		flag="true"
	fi

done
	echo $flag

}

function main(){
flagResult=$(isPrime $nvalue)

if [ $flagResult == "true" ]
then
	echo " prime number"
else
	echo " not a prime number"
fi
}
main
