#!/bin/bash
counter=0;
largest=0;
secondLargest=0;
for (( i=0; i<10; i++ ))
do
	random=$((RANDOM%1000))
	rArray[((counter++))]=$random;
done

echo "Random numbers"${rArray[@]}

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
echo "largest value is"$largest
echo "Second Largest value"$secondLargest
