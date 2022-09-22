#!/bin/bash

set -x

chmod +x /mnt/mtd/dd
rm /mnt/sd/* -rf
df -h | grep /mnt/sd

while true
do 
	for i in `seq 12`
	do 
		file=test$i.txt
		echo $file
		/mnt/mtd/dd if=/dev/zero of=/mnt/sd/$file bs=64k count=20000 conv=fdatasync
	done

	df -h | grep /mnt/sd

	for i in `seq 12`
	do 
		file=test$i.txt
		echo $file
		date
		rm /mnt/sd/$file
		date
	done

	df -h | grep /mnt/sd
done

