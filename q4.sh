#!/bin/bash



num_arg=$#
if [ ${num_arg} -ne 2 ]; then
        echo "Error: two parameters are required"
        exit 1
fi


if ! [[ -f $1 && -f $2 ]]; then
    echo "one of the files does not exist on your filesystem."
    exit 1
fi

first=$(sha256sum $1)
second=$(sha256sum $2)

if [ "$fisrt" == "$second" ]; then
	echo "1"
else
	echo "0"
fi
