#!/bin/bash

dd if=/dev/zero of=testfile bs=1024 count=1024

tr '\000' '\377' < /dev/zero | dd of=testfileT bs=1024 count=1024

cat testfile | tr '\000' '\377' > testfileT2
