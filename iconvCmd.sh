iconv -l
iconv -f UTF8 -t MS-ANSI -o testfile_output testfile
iconv -f utf8 -t windows-1252 testfile > testfile-2
iconv -f utf8 -t ms-ansi testfile > testfile-2
