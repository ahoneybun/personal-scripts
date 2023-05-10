#!/usr/bin/env bash

# Checking if the tools are installed"
if ! [ -x "$(command -v stress-ng)" ];
then
  sudo apt install stress-ng
fi

if ! [ -x "$(command -v glmark2)" ];
then 
  sudo apt install glmark2 
fi

gnome-terminal -- glmark2 --run-forever
#gnome-terminal -- stress-ng -m 0 -c 0 --vm-bytes 25G
gnome-terminal -- journalctl -f | grep -i error
