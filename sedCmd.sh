#!/bin/bash

sed -i '/lbbxsxlz/d' tmp.txt
sed -i '/sls/a lbbxsxlzlovesls' tmp.txt
sed -e "/sls/i \\\t\t\"lbbxsxlzloveslslove\"" tmp.txt > tmp.bak
 
sed -n '/^root/,/^sync/p' /etc/passwd
sed -n '5, +5p' /etc/passwd
sed '/^#/d' /etc/crontab
