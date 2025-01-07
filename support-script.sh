#!/bin/bash

# Default values
verbose=0
file=""

# Show help function
show_help() {
    echo "Usage: $0 --file FILE --verbose --help"
    echo "  --file FILE    Specify a file"
    echo "  --verbose      Enable verbose output"
    echo "  --help         Show this help message"
}

dpkg_fix () {
    echo "--------------------------"
    echo "fixing the package manager"
    echo "--------------------------"
    echo ""
    sudo apt update
    sudo dpkg --configure -a
    sudo apt upgrade
    echo ""
    echo "--------------------------"
    echo "finished!"
    echo "--------------------------"
}

clear_efi_variables () {
    echo "----------------------------------------"
    echo "clearing the EFI variables from firmware"
    echo "----------------------------------------"
    echo ""
    for i in $(seq 0 9); do sudo efibootmgr -B -b 000$i 2>/dev/null; done
    sudo bootctl --path=/boot/efi install
    echo ""
    echo "--------------------------"
    echo "finished!"
    echo "--------------------------"
}

# Parse command line arguments manually
while [[ $# -gt 0 ]]; do
    case "$1" in
        --file)
            file="$2"
            shift 2
            ;;
        --verbose)
            verbose=1
            shift
            ;;
        --help)
            show_help
            exit 0
            ;;
        --fix-apt)
            dpkg_fix
            exit 0
            ;;
        --clear-efi)
            clear_efi_variables
            exit 0
            ;;
        *)
            echo "Invalid option: $1"
            show_help
            exit 1
            ;;
    esac
done

# Print the results
echo "Verbose mode: $verbose"
echo "File: $file"
