#!/bin/bash

echo "Enter first path"
read p1
if ! [ -f "$p1" ]; then
        echo "The first file doesn't exist!"
        exit
fi

echo "Enter second path"
read p2

if ! [ -f "$p2" ]; then
        echo "The second file doesn't exist!"
        exit
fi

is1=$(sha256sum ${p1} | cut -d " " -f 1)
is2=$(sha256sum ${p2} | cut -d " " -f 1)

if [[ "${is1}" == "${is2}" ]]; then
	echo "The files are the same!"
	exit 0
else
	echo "The files are different!"
	exit 1
fi
