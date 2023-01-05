#! /bin/bash

filelist=`git status | grep modified | awk -F " " '{print $2}'`
for file in $filelist
do
	sed '/Copyright/ s/[0-9]\{4\}/'$(date '+%Y')'/2' -i $file
done
