#!/bin/bash

pwd
dir --color
cd /usr/bin
dir -l
dir -sr
cd -
pwd

cd /bin/
dirs -v
pushd /usr/bin/
dirs -v
pushd /tmp
dirs -v
popd +0
pwd
