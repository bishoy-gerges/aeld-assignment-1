#!/bin/sh

# Check if both arguments are provided
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

# Check if the provided directory exists
if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

filesdir=$1
searchstr=$2

lines=$(grep -r "$searchstr" "$filesdir" | wc -l)
files=$(grep -rl "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $files and the number of matching lines are $lines"