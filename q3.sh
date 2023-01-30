#!/bin/bash
if [ $# -gt 2 ]; then
    echo "only 2 files in input"
    exit 1
fi
if [ ! -f "$1" ]; then
    echo "Eror no such file $1"
    exit 1
fi
if [ ! -f "$2" ]; then
    echo "Eror no such file $2"
    exit 1
fi

a=$(sha256sum $1| awk '{print $1}')
b=$(sha256sum $2| awk '{print $1}')
if [[ ${a} == ${b} ]]; then
    echo 0
else
    echo 1
fi
