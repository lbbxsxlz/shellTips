#! /bin/sh
# author lbbxsxlz@gmail.com

filelist=`git status | grep modified | awk -F " " '{print $2}'`
for file in $filelist
do
	count=`cat $file | grep Copyright | grep -o '[0-9]\{4\}' | wc -l`
	if [ $count -eq 1 ]; then
		oldyear=`cat $file | grep Copyright | grep -o '[0-9]\{4\}'`
		sed "/Copyright/ s/[0-9]\{4\}/$oldyear-$(date '+%Y')/" -i $file
		#sed '/Copyright/ s/[0-9]\{4\}/'"$oldyear"'-'$(date '+%Y')'/' -i $file
	else
		sed "/Copyright/ s/[0-9]\{4\}/$(date '+%Y')/2" -i $file
		#sed '/Copyright/ s/[0-9]\{4\}/'$(date '+%Y')'/2' -i $file
	fi
done
