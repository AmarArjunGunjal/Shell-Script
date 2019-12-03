#!/bin/bash -x
for file in *.log.1
do
	if [ -d $file ]
	then
	rm $file
	fi
	touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1
	DATE=`date +%d+%m+%y`
	FILE=$file
	NAME=`echo ${FILE} | awk -F. '{print $1}'`
	EXT=`echo  ${FILE} | awk -F. '{print $2}'`
	NEWFILE=${NAME}-${DATE}.${EXT}
	cp $file $NEWFILE
done

