#!/bin/bash 

echo "Input path 1"
read path1

if ! [ -f ${path1} ]; then
        echo "file #1 doesn't exist"
        exit 1
fi

echo "Input path 2"
read path2

if ! [ -f ${path2} ]; then
        echo "file #2 doesn't exist"
        exit 1
fi

code1=sha256sum ${path1}|cut -d " " -f 1
code2=sha256sum ${path2}|cut -d " " -f 1
if (${code2}==${code1}); then
	return "0"
else
	return "1"
fi
