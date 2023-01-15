#!/bin/bash

sed -i '/lbbxsxlz/d' tmp.txt
sed -i '/sls/a lbbxsxlzlovesls' tmp.txt
sed -e "/sls/i \\\t\t\"lbbxsxlzloveslslove\"" tmp.txt > tmp.bak
 
sed -n '/^root/,/^sync/p' /etc/passwd
sed -n '5, +5p' /etc/passwd
sed '/^#/d' /etc/crontab

sed -i 's/\x00\x00\x38\x38\x38\x38\x38\x38\x00/\x00\x00\x38\x38\x38\x38\x38\x33\x00/' ./sonia_upx_bak
sed -i '/"Commands"/a\\      "burn dhboot.bin.img bootloader",' ./Install