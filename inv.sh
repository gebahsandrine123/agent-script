#!/bin/bash

##Description : deleting old files
##Author      : gsandrine1
##modify      : by author

find /tmp -mtime +5 -type f -delete

if [ $? -eq 0 ]
then
echo "files deleted"
else
echo " files still exist"
fi
