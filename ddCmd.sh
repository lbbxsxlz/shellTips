#!/bin/bash

dd if=/dev/zero bs=2k count=2 | tr '/000' '/3777' > tmp.txt
dd if=tmp1.txt of=tmp.txt bs=2k count=1 conv=notrunc seek=0
dd if=tmp2.txt of=tmp.txt bs=2k count=1 conv=notrunc seek=1
