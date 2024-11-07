#!/bin/bash

if [ -z "$1" ]; then 
    echo "No argument provided"
    exit 1
fi

threshold=$1
directory="/home/luka"
files=$(find "$directory" -type f -size +"${threshold}k") #kilobajti
if [ -z "$files" ]; then 
    echo "No files greater than the threshold"
    exit 0
fi

echo "Files greater than the $threshold threshold:"
echo "$files"

tar -czf backup.tgz "$files"
echo "Backup tgz created"


