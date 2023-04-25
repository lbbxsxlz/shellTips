#! /bin/sh

mount -a
mkdir -p /mnt/mytmpfs;mount -t tmpfs -o size=10M tmpfs /mnt/mytmpfs

mount -t nfs 10.6.5.62:/share/li_binbin1 /home -o nolock,tcp

mount -t cifs //172.31.1.101/share /home -o username=31770,password=lbbxsxlz@2021

# sd-card
mkdosfs -F 32 -s 64 /dev/mmc1
mount -t vfat /dev/mmc0p1 /mnt/sd/

# emmc
mke2fs -t ext4 -b 2048 /dev/mmcblk0p14
mount -t ext4 /dev/mmcblk0p14 /mnt/backup

# nand-flash
umount /mnt/backup
/sbin/ubidetach /dev/ubi_ctrl -m 12
flash_eraseall /dev/mtd/12
/sbin/ubiattach /dev/ubi_ctrl -m 12
/sbin/ubimkvol /dev/ubi2 -s 2500000 -N backup
mount -t ubifs ubi2_0 /mnt/backup