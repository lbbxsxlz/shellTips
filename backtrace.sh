#! /bin/sh
# Author : lbbxsxlz <lbbxsxlz@gmail.com>
# Description: kernel dmesg capture

keepFileSize()
{
	if [ -f /mnt/backup/backtrace_bak ]; then
		#size=`ls -l /mnt/backup/backtrace_bak | awk '{print $3}'`
		size=`ls -l /mnt/backup/backtrace_bak | awk '{print $5}'`
		#大于3M
		if [ $size -gt 3145728 ]; then
			touch /mnt/sd/testFlag
			if [ $? -eq 0 ]; then
				rm /mnt/sd/testFlag
				cat /mnt/backup/backtrace_bak >> /mnt/sd/backtrace_bak
				sync
				rm /mnt/backup/backtrace_bak
				echo "----------3333333333  $(date) file truncation  3145728 bytes 3333333333----------" >> /mnt/backup/backtrace_bak
			else
				#删除内核启动打印
				sed -i '/\[    0./d' /mnt/backup/backtrace_bak
				sed -i '/\[    1./d' /mnt/backup/backtrace_bak
				sed -i '/\[    2./d' /mnt/backup/backtrace_bak
			fi
		fi
	fi
	
	if [ -f /mnt/mtd/backtrace_bak ]; then
		#size=`ls -l /mnt/mtd/backtrace_bak | awk '{print $3}'`
		size=`ls -l /mnt/mtd/backtrace_bak | awk '{print $5}'`
		#大于1.5M
		if [ $size -gt 1572864 ]; then
			cat /mnt/mtd/backtrace_bak >> /mnt/backup/backtrace_bak
			sync
			rm /mnt/mtd/backtrace_bak
			echo "----------2222222222  $(date) file truncation  1572864 bytes 2222222222----------" >> /mnt/mtd/backtrace_bak
		fi
	fi
		
	#size=`ls -l /mnt/mtd/backtrace | awk '{print $3}'`
	size=`ls -l /mnt/mtd/backtrace | awk '{print $5}'`
	#大于 100K
	if [ $size -gt 102400 ]; then
		cat /mnt/mtd/backtrace >> /mnt/mtd/backtrace_bak
		sync
		rm /mnt/mtd/backtrace
		echo "----------1111111111  $(date) file truncation 102400 bytes  1111111111----------" >> /mnt/mtd/backtrace
	fi
}

echo Y > /sys/module/printk/parameters/time

hour=`date +%H`
#启动时间
date >> /mnt/mtd/backtrace
cat /proc/uptime >> /mnt/mtd/backtrace
sleep 25
dmesg -c >> /mnt/mtd/backtrace
#过滤掉内核启动时的信息
#dmesg -c > /dev/null
sync
date >> /mnt/mtd/backtrace
cat /proc/uptime >> /mnt/mtd/backtrace
ps | grep sonia | grep -v 'grep' >> /mnt/mtd/backtrace
echo "--------------- $(date)------------------" >> /mnt/mtd/backtrace
keepFileSize
while true
do
	c_hour=`date +%H`
	if [ $hour != $c_hour ]; then
		echo "**********  date update   **********" >> /mnt/mtd/backtrace
		date >> /mnt/mtd/backtrace
		keepFileSize
		hour=$c_hour
		sleep 1
	fi
	dmesg -c >> /mnt/mtd/backtrace
	sync
	sleep 6
done

