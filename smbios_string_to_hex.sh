#! /bin/sh

input_file=$1
output_file=$2

cat $input_file | grep -E '0000.*?\*' | awk -F ':' '{print $2}' | awk -F '*' '{print $1}' | sed 's/[[:space:]]//g' | sed 's/-//g' | sed ":a;N;s/\n//g;ta" > smbios_tmp

# str2hex code in [here](https://github.com/lbbxsxlz/BeEasy/blob/main/str2hex/str2hex.c)
./str2hex ./smbios_tmp $output_file

rm smbios_tmp
