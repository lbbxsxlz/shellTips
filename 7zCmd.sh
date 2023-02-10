#! /bin/bash
# show the format supported
7z i

# show the the format of file
file $filename

# list contens
7z l hello.ext4

# extract files
7z x hello.ext4
# -snl store symbolic links as links
7z -snl hello.ext4
