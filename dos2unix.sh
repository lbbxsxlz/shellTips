#!/bin/bash
cp tmpfile1 tmpfile2
dos2unix tmpfile1
diff tmpfile1 tmpfile2
cat tmpfile2 | tr -d '\r' > tmpfile3
diff tmpfile3 tmpfile2


