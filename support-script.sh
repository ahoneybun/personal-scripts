#!/bin/bash

echo "------------------------------------------------------"
echo "Hello $USER what would you like to do today?"
echo "------------------------------------------------------"
echo ""

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
    sudo apt update
    sudo dpkg --configure -a
    sudo apt upgrade
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
        --dpkg-fix)
            dpkg_fix
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
