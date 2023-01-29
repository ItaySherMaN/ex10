#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Incorrect number of arguments."
    exit 1
fi

if [ ! -f $1 ]; then
    echo "Error: $1 is not a valid file."
    exit 1
fi

if [ ! -f $2 ]; then
    echo "Error: $2 is not a valid file."
    exit 1
fi

file_1=$(sha256sum $1 | awk '{print $1}')
file_2=$(sha256sum $2 | awk '{print $1}')

if [ "$file_1" == "$file_2" ]; then
    echo "The files are the same."
    exit 0
else
    echo "The files are different."
    exit 1
fi