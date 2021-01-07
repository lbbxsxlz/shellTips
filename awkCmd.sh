#/bin/bash

cat tmp.txt | grep lbbxsxlz | awk -F '.' '{print $1}'

cat tmp.txt | grep lbb | awk -F ':' 'NR==1 {print $1}'

