#!/bin/bash

if ! [ -f $1 ]; then
	echo "$1 does not exist"
	exit 1
fi
if ! [ -f $2 ]; then
        echo "$2 does not exist"
        exit 1
fi

if ! [ $# -eq 2 ]; then
	echo "Error: Two paths required"
	exit 1
fi

id1=$(sha256sum $1 | cut -d " " -f1)
id2=$(sha256sum $2 | cut -d " " -f1)

if [ "$id1" = "$id2" ]; then
	echo 0
else
	echo 1
fi
