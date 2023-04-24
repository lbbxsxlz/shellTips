#! /bin/sh

mount -a
mkdir -p /mnt/mytmpfs;mount -t tmpfs -o size=10M tmpfs /mnt/mytmpfs
