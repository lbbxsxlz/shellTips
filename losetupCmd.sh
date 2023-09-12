#! /bin/bash

sudo su

mkfs.msdos -C linux.iso 65536
DEV=$(losetup -f)
losetup $DEV linux.iso
mount $DEV /mnt
cp ./linux-riscv64.efi /mnt
cp ./rootfs.cpio /mnt
umount /mnt
losetup -d $DEV
