#!/bin/bash

function main()
{
counter=0;
largest=0;
secondLargest=0;


for (( i=0; i<10; i++ ))
do
	random=$((RANDOM%1000))
	rArray[((counter++))]=$random;

done
}
main

echo "Random numbers"${rArray[@]}

function secondLargest(){

for (( i=0; i<10; i++ ))
do
	if [ ${rArray[i]} -gt $largest  ]
	then
		secondLargest=$(($largest))

		largest=$((${rArray[i]}))
		continue;
	fi
	if [ ${rArray[i]} -gt $secondLargest ]
	then
		secondlargest=$((${rArray[i]}));
	fi
done
}
secondLargest


function secondSmallesst()
{
secondSmallest=${rArray[0]};
smallest=${rArray[0]};

#echo "array ${rArray[@]}"
for (( i=0; i<10; i++ ))
do
	if [ ${rArray[i]} -lt $smallest ]
	then
		echo $secondSmallest
		secondSmallest=$(($smallest))
		smallest=$((${rArray[i]}))
		continue;
	fi
	if [ ${rArray[i]} -lt $secondSmallest ]
	then
		secondSmallest=$((${rArray[i]}));
	fi
done
}

secondSmallesst

echo "largest value is"$largest
echo "Second Largest value"$secondLargest


echo "smallest value is"$smallest
echo "second smallest is"$secondSmallest
