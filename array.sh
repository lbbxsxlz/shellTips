#! /bin/bash

declare -A user

user[name]='lbbxsxlz'
user[age]=34

echo ${user[name]}

echo ${user[*]}

funclist=(func1 func2 func3)

func1()
{
        echo 'this is a function named func1'
}


func2()
{
        echo 'this a another function'
}

func3()
{
        echo 'this a another function name func3'
}


echo ${#funclist[*]}
#echo ${#funclist[@]}
for f in ${funclist[*]}
do
        echo $f
        $f
done
