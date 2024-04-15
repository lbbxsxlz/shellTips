#!/bin/bash

cat tmp.txt | grep lbbxsxlz | awk -F '.' '{print $1}'

cat tmp.txt | grep lbb | awk -F ':' 'NR==1 {print $1}'

awk 'BEGIN{a=5;b=3;print "a * b =",a*b}'

awk 'BEGIN{print ENVIRON["HOME"]}'

awk -F: '$NF=="/bin/bash"{printf "%15s,%s\n",$NF,$1}' /etc/passwd

tmp=9;awk -v av="$tmp" '{print $av}' file.txt
