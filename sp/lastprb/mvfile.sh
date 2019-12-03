#!/bin/bash
A= echo $(find /var/log/ -mtime +7 | awk -F/ '{print $4}')
echo "$A"
if [ -d /home/admin1/shell/sp/backupdata  ]
then 
cp $A /home/admin1/shell/sp/backupdata
echo "Data Moved"
else
echo "Data Not MOved"
fi


