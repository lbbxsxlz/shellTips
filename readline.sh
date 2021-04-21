#!/bin/bash

fileName=$1
cat $fileName | while read line  
do  
    echo $line
done

for line in `cat $fileName`  
do  
    echo $line
done

while read line  
do  
    echo $line
done < $fileName 