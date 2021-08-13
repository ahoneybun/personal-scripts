#!/usr/bin/bash

echo "----------------------------------------"
echo "| Decrypting drive and using lvm magic |"
echo "----------------------------------------"

sudo cryptsetup luksOpen /dev/sdc2 crypt-root
sudo lvscan
sudo vgchange -ay

echo "---------------------------------"
echo "| Moving around and mounting up |"
echo "---------------------------------"

sudo mount /dev/mapper/crypt-root /mnt
sudo mount /dev/sdc1 /mnt/boot
sudo cp /etc/resolv.conf /mnt/etc/resolv.conf
cd /mnt
sudo mount -t proc /proc proc/
sudo mount -t sysfs /sys sys/
sudo mount --rbind /dev dev/

echo "-----------------------"
echo "| Entering the Matrix |"
echo "-----------------------"

sudo chroot /mnt /usr/bin/bash

