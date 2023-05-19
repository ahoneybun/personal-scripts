#!/usr/bin/env bash

ramTotal=$(free -h | awk '/^Mem:/{print $2}'| awk -FG {'print$1'})
ramTotal=($((ramTotal-4)))
echo "Adjusted RAM Total: $ramTotal"

# Checking if the tools are installed"
if ! [ -x "$(command -v stress-ng)" ];
then
  echo "Installing stress-ng..."
  sudo apt install stress-ng -y
fi

if ! [ -x "$(command -v glmark2)" ];
then 
  echo "Installing glmark2..."
  sudo apt install glmark2 -y
fi

# Run glmark2 in a new terminal window
gnome-terminal -- glmark2 --run-forever

# Run stress-ng in a new terminal window with memory and CPU stress
gnome-terminal -- stress-ng -m 0 -c 0 --vm-bytes "$ramTotal"G

# Monitor system logs for errors using journalctl in a new terminal window
gnome-terminal -- journalctl -f | grep -i error
