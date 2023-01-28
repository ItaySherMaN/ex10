#!/bin/bash
if [ ! $# -eq 2 ];then
	echo "number of parameters is not correct, enter 2 pathes for a file"
	exit 1
fi
file1=$1
file2=$2
if [ ! -f "$file1" ] || [ ! -f "$file2" ];then
	echo "file does not exist, try again!"
	exit 1
fi

commit_id1=$(sha256sum $file1 | awk '{print $1}')
commit_id2=$(sha256sum $file2 | awk '{print $1}')

if [ "$commit_id1" = "$commit_id2" ];then
	echo 0
else
	echo 1
fi
