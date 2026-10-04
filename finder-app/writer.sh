#!/bin/sh

# Check if both arguments are provided
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <writefiledir> <writestr>"
    exit 1
fi

# Ensure the directory exists, if not create it
mkdir -p "$(dirname "$1")"

file="$1"
write_str="$2"

echo $write_str > $file