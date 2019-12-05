#!/bin/bash

function getThreeDigit()
{
random=$((RANDOM%1000))
if [ $random -lt 100 ]
then
	$random=$(getThreeDigit)
else
	echo "$random"
fi
}


function main()
{
counter=0;
for (( i=0; i<10; i++ ))
do
	rArray[i]=$(getThreeDigit)
done
}
echo "Random Array values"${rArray[@]}

