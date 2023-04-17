#!/bin/bash

sed -i '/lbbxsxlz/d' tmp.txt
sed -i '/sls/a lbbxsxlzlovesls' tmp.txt
sed -e "/sls/i \\\t\t\"lbbxsxlzloveslslove\"" tmp.txt > tmp.bak
 
sed -n '/^root/,/^sync/p' /etc/passwd
sed -n '5, +5p' /etc/passwd
sed '/^#/d' /etc/crontab

# remove the space
sed 's/[[:space:]]//g' -i tmp
sed 's/-//g' -i tmp

# remove the null line
sed '/^\s*$/d' file
sed '/^[  ]*$/d' file

# remove '\n'
sed ":a;N;s/\n//g;ta" -i tmp

sed ":a;N;s/\n//g;ba" -i tmp
sed ":a;N;s/\n//g;$!ba" -i tmp
sed ":a;$!N;s/\n//g;ba" -i tmp

sed -i 's/\x00\x00\x38\x38\x38\x38\x38\x38\x00/\x00\x00\x38\x38\x38\x38\x38\x33\x00/' ./sonia_upx_bak
sed -i '/"Commands"/a\\      "burn dhboot.bin.img bootloader",' ./Install
