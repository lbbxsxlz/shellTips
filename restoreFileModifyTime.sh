#!/bin/bash

function changeFileModifyTime()
{	
	touch -c -t $1 $2	
	if [ $? -ne 0 ];then		
		return 1	
	else			
		return 0	
	fi
}

function getFileModifyTime()
{
	date=`stat $1 | grep "Modify" | awk '{print $2}'| sed s/-//g`
	time=`stat $1 | grep "Modify" | awk '{print $3}'| awk -F . '{print $1}' | awk -F : '{print $1$2}'`
	second=`stat $1 | grep "Modify" | awk '{print $3}'| awk -F . '{print $1}' | awk -F : '{print $3}'`

	touchflag=$date$time.$second
	echo $touchflag
}

orgTime=$(getFileModifyTime $1)
stat $1
echo "lbbxsxlz modify" >> $1
stat $1
changeFileModifyTime $orgTime $1
stat $1
