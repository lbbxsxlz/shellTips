#! /bin/bash

fd_fifo=/tmp/fd_temp
mkfifo $fd_fifo
exec 6<>$fd_fifo
proc_num=5
count=0;

for ((i=0;i<$proc_num;i++))
do
    echo >& 6
done

start=`date +"%s"
for (( i=0; i<10; i++ ))
do
  read -u 6
  {
      echo "execute"
      sleep 1
      echo >& 6
  }&
done
wait
exec 6>&-
exec 6<&-           
rm -f $fifo

end=`date +"%s"`
echo "time: " `expr $end - $start`
