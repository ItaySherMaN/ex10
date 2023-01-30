#!/bin/bash

file1=$1
file2=$2

if [ ! -e "$file1" ]; then
  echo "Error: $file1 path does not exist"
  exit 1
fi

if [ ! -e "$file2" ]; then
  echo "Error: $file2 path does not exist"
  exit 1
fi

sha1="$(sha256sum "$file1" | awk '{print $1}')"
sha2="$(sha256sum "$file2" | awk '{print $1}')"

if [ "$sha1" = "$sha2" ]; then
  echo "0"
else
  echo "1"
fi

