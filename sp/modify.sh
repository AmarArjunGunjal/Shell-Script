#!/bin/bash

files="$(find /home/admin1/Downloads -mtime +2)"
for file in $files
do
echo $files
done
