#!/usr/bin/env bash

ramTotal=$(free -h | awk '/^Mem:/{print $2}'| awk -FG {'print$1'})
ramTotal=($((ramTotal-4)))
echo $ramTotal

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
gnome-terminal -- stress-ng -m 0 -c 0 --vm-bytes "$ramTotal"G
gnome-terminal -- journalctl -f | grep -i error
