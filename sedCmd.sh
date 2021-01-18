#!/bin/bash

sed -i '/lbbxsxlz/d' tmp.txt
sed -i '/sls/a lbbxsxlzlovesls' tmp.txt
sed -e "/sls/i \\\t\t\"lbbxsxlzloveslslove\"" tmp.txt > tmp.bak
 
