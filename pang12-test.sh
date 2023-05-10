#!/usr/bin/env bash

echo "Installing tools if they are missing"
echo ""
sudo apt install stress-ng glmark2

gnome-terminal -- glmark2 --run-forever
gnome-terminal -- stress-ng -m 0 -c 0 --vm-bytes 25G
gnome-terminal -- journalctl -f | grep -i error
