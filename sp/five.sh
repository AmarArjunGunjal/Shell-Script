#!/bin/bash

if [ -d /home/admin1/shell/sp/demo ]
then
	echo "file exist"
else
	mkdir demo
	echo "File Created"
fi
