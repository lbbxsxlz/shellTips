mkdir initrdram
cp initrd initrdram/initrd.gz
cd initrdram
gunzip -f initrd.gz
cpio -ivmd < initrd
rm initrd
# add or replace files
find . | cpio -c -o -v | gzip -9 -n >../initrd
