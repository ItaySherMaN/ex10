#!/bin/bash

echo "What is the first file?"
read file1

if ! [ -f "${file1}" ]; then
echo "could not find file 1"
exit 1
fi

echo "What is the second file?"
read file2

if ! [ -f "${file2}" ]; then
echo "could not find file 2"
exit 1
fi

hex1=$(sha256sum "${file1}" | cut -d " " -f 1)
hex2=$(sha256sum "${file2}" | cut -d " " -f 1)

if [ "${hex1}" = "${hex2}" ]; then
echo "0"
else
echo "1"
fi
