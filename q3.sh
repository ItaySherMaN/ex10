#!/bin/bash 

if [ $# -lt 2 ]; then
    echo "Error: you can only use 2 parameters" 
    exit 1 
fi


if [ $# -gt 2 ]; then
    echo "Error: you can only use 2 parameters" 
    exit 1 
fi

if [ ! -f $1 ]; then
    echo "Error: the path $1 does not exists"
    exit 1
fi

if [ ! -f $2 ]; then
    echo "Error: the path $2 does not exists"
    exit 1
fi



file_1=$(sha256sum $1 | cut -d " " -f 1)

file_2=$(sha256sum $2 | cut -d " " -f 1)

if [ $file_1 == $file_2 ]; then 
    echo "0" 
else 
    echo "1" 
fi 



