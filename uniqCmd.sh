#! /bin/sh

awk -F":" '{print $NF}' /etc/passwd | uniq -c

awk -F":" '{print $NF}' /etc/passwd | uniq -d

awk -F":" '{print $NF}' /etc/passwd | uniq -u
