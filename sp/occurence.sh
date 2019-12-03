#!/bin/bash

for file in `ls /var/log/*log`
do
	echo $file
	grep -o systemd $file | wc -l
done
