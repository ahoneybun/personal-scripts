#!/bin/bash

echo ""
echo "Common Tasks"
echo ""
echo "[1] Find if an application is installed with flatpak or apt"
echo "[2] List system information"
echo ""

echo "------------------------------------------------------"
echo -n "Enter choice: "; read choice
case "$choice" in

    1)
        echo ""
        echo -n "What is the application name? "; read application
        echo "Searching for '$application'..."

        # Run flatpak list and grep for the application
        flatpak list | grep "$application"

        # Run apt search for the application
        apt list --installed | grep "$application" 2>/dev/null
    ;;

    2) 
        echo ""
        echo "=== System Information ==="; uname -r | awk '{print "Kernel Version: "$0}'; sudo dmidecode -s bios-version | awk '{print "BIOS Version: "$0}'; sudo dmidecode -s system-product-name | awk '{print "System Model: "$0}'

esac