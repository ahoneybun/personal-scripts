#!/bin/bash

echo "------------------------------------------------------"
echo "Hello $USER what would you like to do today?"
echo "------------------------------------------------------"
echo ""

echo "[1] Clear EFI entries from firmware"
echo "[2] Fix Package Manager"
echo ""

echo "------------------------------------------------------"
echo -n "Enter choice: "; read choice
case "$choice" in

    1) for i in $(seq 0 9); do sudo efibootmgr -B -b 000$i 2>/dev/null; done
       sudo bootctl --path=/boot/efi install
    ;;

    2) sh support-backend/apt/main.sh
    ;;

esac
