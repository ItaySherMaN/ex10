#!/bin/bash

echo "Input path 1"
read -r path1

if ! [ -f $"path1" ]; then
	echo "path1 is no exist"
	exit 1
fi

echo "Input path 2"
read -r path2

if ! [ -f $"path2" ]; then
	echo "Path 2 is not exist"
	exit 1
fi

first=sha256sum $"path1" | cut -d " " -f 1
second=sha256sum $"path2" | cut -d " " -f 1

if [[ $"first" == $"second" ]]; then
	echo "0"
else
	echo "1"
fi
