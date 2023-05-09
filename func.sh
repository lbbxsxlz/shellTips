#! /bin/sh

func_list='func1 func2'

func_name=$1

func1()
{
        echo 'this is a function named func1'
}


func2()
{
        echo 'this a another function'
}

echo 'test file'
for f in $func_list
do
        if [ "$f" = "$func_name" ]; then
                $func_name
                exit
        fi
done
