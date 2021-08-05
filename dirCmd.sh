#/bin/bash

pwd
cd /usr/bin
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
