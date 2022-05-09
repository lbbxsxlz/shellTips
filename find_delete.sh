#!/bin/bash

find /mnt/syslog/ -mtime +6  -name '*.log' -delete
find /usr/local -mtime +6  -name '*.log' -exec rm -f {} \\
