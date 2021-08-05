#!/bin/bash
ERRTRAP()
{
	echo "[LINE:$1] Error:Command or function exited with status $?"
}

mytest()
{
	echo "test trap cmd"
	return 1
}

trap 'ERRTRAP $LINENO' ERR
#this cmd is invalid
abc
mytest
