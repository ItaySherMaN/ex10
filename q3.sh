#!/bin/bash

echo "input path 1"
read path1
if ! [ -f ${path1} ]; then
	echo "File #1 doesn't exist"
	exit 1
fi

echo "input path 2"
read path2
if ! [ -f ${path2} ]; then
	echo "File doesn't exist"
	exit 1
fi

code1=$(sha256sum $path1 | cut -d " " -f 1)
code2=$(sha256sum $path2 | cut -d " " -f 1)


if [ $code1 == $code2 ]; then
	echo 0
else 
	echo 1
fi
