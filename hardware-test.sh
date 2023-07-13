#!/usr/bin/env bash

ramTotal=$(free -h | awk '/^Mem:/{print $2}'| awk -FG {'print$1'})
ramTotal=($((ramTotal-4)))
echo "Adjusted RAM Total: $ramTotal"

# Checking if the tools are installed"
if ! [ -x "$(command -v stress-ng)" ];
then
  echo "Installing stress-ng..."
  sudo apt install -y stress-ng
fi

if ! [ -x "$(command -v glmark2)" ];
then 
  echo "Installing glmark2..."
  sudo apt install -y glmark2
fi

if ! [ -x "$(command -v )" ];
then 
  echo "Installing nvme-cli and smartmontools..."
  sudo apt install -y nvme-cli smartmontools
fi

lsblk -f

echo "----------"
echo ""
echo "Which drive do we want to use for this installation?"
echo "Drive name may appear as /dev/nvme0n1 or /dev/sda"
echo ""
read driveName

sudo smartctl -a $driveName

# Run glmark2 in a new terminal window
#gnome-terminal -- glmark2 --run-forever

# Run stress-ng in a new terminal window with memory and CPU stress
#gnome-terminal -- stress-ng -m 0 -c 0 --vm-bytes "$ramTotal"G

# Monitor system logs for errors using journalctl in a new terminal window
#gnome-terminal -- journalctl -f | grep -i error
