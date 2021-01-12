#!/bin/bash

let ret=1+2*3
echo $ret

a=$((1024 * 2))
echo $((a / 1024))

echo $[ a + 3%2 ]

i=`expr $ret + $a`
echo $i 

hex=`echo "obase=16;$i" | bc`
echo 0x$hex
