#!/bin/bash
cp tmpfile1 tmpfile2
dos2unix tmpfile1
diff tmpfile1 tmpfile2

cat tmpfile2 | tr -d '\r' > tmpfile3
diff tmpfile3 tmpfile2

dos2unix -n tmpfile2 tmpfile4
diff tmpfile4 tmpfile2

unix2dos-n tmpfile4 tmpfile5
diff tmpfile4 tmpfile2
