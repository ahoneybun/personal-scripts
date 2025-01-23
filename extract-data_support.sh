#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <keyword> <file>"
    exit 1
fi

# Assign arguments to variables
keyword=$1
file=$2

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

# Use grep to extract lines with the keyword
grep "$keyword" "$file"

