mkdir rootfs
sudo losetup /dev/loop9 myrootfs.img
sudo kpartx -av /dev/loop9 
sudo mount /dev/mapper/loop9p1 ./rootfs

# cp files to ./rootfs

sudo umount /dev/mapper/loop9p1 
sudo dmsetup remove /dev/mapper/loop9p1
sudo losetup -d /dev/loop9
