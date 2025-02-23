#!/bin/bash

# Show help function
show_help() {
    echo "  --help                Show this help message"
    echo "  --fix-apt             Fixes dpkg issues such as unconfigured"
    echo "  --fix-flatpak         Fixes common flatpak issues"
    echo "  --fix-system76-power  Fixes system76-power configure issue"
    echo "  --fix-brave           Fixes Brave's source file"
    echo "  --clear-efi           Clears extra EFI variables from firmware"
    echo "  --clear-firmware      Clears the downloaded firmware files and restarts the process"
    echo "  --reinstall-nvidia    Reinstalls the NVIDIA driver"
}

dpkg_fix () {
    echo "------------------------------"
    echo "| fixing the package manager |"
    echo "------------------------------"
    echo ""
    sudo apt update
    sudo dpkg --configure -a
    sudo apt upgrade
    echo ""
    echo "-------------"
    echo "| finished! |"
    echo "-------------"
}

flatpak_fix () {
    echo "------------------"
    echo "| fixing flatpak |"
    echo "------------------"
    echo ""
    flatpak update --appstream
    flatpak repair --user
    sudo flatpak repair --system
    flatpak update
    flatpak uninstall --unused
    echo ""
    echo "-------------"
    echo "| finished! |"
    echo "-------------"
}

system76_power_fix () {
    echo "-------------------------"
    echo "| fixing system76-power |"
    echo "-------------------------"
    echo ""
    sudo systemctl unmask com.system76.PowerDaemon.service
    sudo apt clean
    sudo apt update -m
    sudo dpkg --configure -a
    sudo apt install -f
    sudo apt full-upgrade
    sudo apt autoremove --purge
    echo ""
    echo "-------------"
    echo "| finished! |"
    echo "-------------"
}

fix_brave () {
    echo "-----------------------------"
    echo "| fixing Brave's repository |"
    echo "-----------------------------"
    echo ""
    sudo sed -i 's/deb \[signed-by=/deb [arch=amd64 signed-by=/' /etc/apt/sources.list.d/brave-browser-release.list
    echo ""
    echo "-------------"
    echo "| finished! |"
    echo "-------------"
}

clear_efi_variables () {
    echo "--------------------------------------------"
    echo "| clearing the EFI variables from firmware |"
    echo "--------------------------------------------"
    echo ""
    for i in $(seq 0 9); do sudo efibootmgr -B -b 000$i 2>/dev/null; done
    sudo bootctl --path=/boot/efi install
    echo ""
    echo "-------------"
    echo "| finished! |"
    echo "-------------"
}

clear_firmware () {
    echo "--------------------------------"
    echo "| clearing downloaded firmware |"
    echo "--------------------------------"
    echo ""
    sudo rm -r /var/cache/system76-firmware-daemon/
    echo ""
    echo "----------------------------------"
    echo "| downloading the firmware again |"
    echo "----------------------------------"
    echo ""
    sudo system76-firmware-cli schedule
    echo ""
    echo "-----------------------------------------"
    echo "| Are we good to reboot the system now? |"
    echo "-----------------------------------------"

    echo "[Y] Reboot the system"
    echo "[N] Do not reboot"
    echo ""
    echo -n "Enter choice: "; read choice
    case "$choice" in
        Y)
            sudo systemctl reboot
            ;;
        N)
            exit 1
        ;;
    esac
}

reinstall_nvidia () {
    echo "-----------------------------------"
    echo " | reinstalling the NVIDIA driver |"
    echo "-----------------------------------"
    echo ""
    sudo apt purge ~nnvidia
    sudo apt clean
    sudo apt update
    sudo apt install system76-driver-nvidia 
    sudo apt install --reinstall system76-power
    echo ""
    echo "-------------"
    echo "| finished! |"
    echo "-------------"
}

# Parse command line arguments manually
while [[ $# -gt 0 ]]; do
    case "$1" in
        --help)
            show_help
            exit 0
            ;;
        --fix-apt)
            dpkg_fix
            exit 0
            ;;
        --fix-flatpak)
            flatpak_fix
            exit 0
            ;;
        --fix-system76-power)
            system76_power_fix
            exit 0
            ;;
        --fix-brave)
            fix_brave
            exit 0
            ;;
        --clear-efi)
            clear_efi_variables
            exit 0
            ;;
        --clear-firmware)
            clear_firmware
            exit 0
            ;;
        --reinstall-nvidia)
            reinstall_nvidia
            exit 0
            ;;
        *)
            echo "Invalid option: $1"
            show_help
            exit 1
            ;;
    esac
done

# Print help menu by default
show_help
