#!/bin/sh
#
# name: Start NixOS 23.05 VM
# icon: preferences-system-symbolic
# description: Starts the NixOS 23.05 Minimal
# keywords: nixos 23.05 Minimal

cd /mnt/VM && quickemu --vm nixos-23.05-minimal.conf

