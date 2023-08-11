#!/bin/sh
#
# name: Start Arch Linux VM
# icon: /home/aaronh/Pictures/distro-icons/archlinux-logo.png
# description: Starts the Arch Linux VM
# keywords: arch archlinux

cd /mnt/VM && quickemu --vm archlinux-latest.conf

