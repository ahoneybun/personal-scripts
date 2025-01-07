#!/bin/bash

complete_update () {
    sudo apt clean
    sudo apt update
    sudo dpkg --configure -a
    sudo apt install -f
    sudo apt full-upgrade
    sudo apt autoremove --purge
}

dpkg_fix () {
    sudo apt update
    sudo dpkg --configure -a
    sudo apt upgrade
}

echo ""
echo "Are you fully updating the system or fixing an issue with dpkg?"
echo ""

echo "[1] Update system"
echo "[2] Fix dpkg"
echo ""
echo "------------------------------------------------------"
echo -n "Enter choice: "; read choice
case "$choice" in

    1) complete_update
    ;;

    2) dpkg_fix
    ;;

esac
