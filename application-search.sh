#!/bin/bash

echo ""
echo "[1] Find if an application is installed with flatpak or apt"
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

esac
