#! /bin/sh

find ~ -name "*.txt" -print

find ./ -type f -print 

find /usr/bin -size +10000k -exec ls -ld {} \;

find . -perm 777 -print
