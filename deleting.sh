#!/bin/bash

# Function to delete empty directories
delete_empty_dirs() {
    # Loop through the directories recursively
    find "$1" -type d -empty -print -exec rmdir {} \;
}

# Check if a directory path was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Call the function with the provided directory
delete_empty_dirs "$1"
