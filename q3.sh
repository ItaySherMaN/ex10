# /bin/bash

file1=$1
file2=$2


if [ $# != 2 ]; then
	echo need to send two files as arguments, exitting
	exit;
fi

if ! [ -f "$file2" ] || ! [ -f "$file1" ] ; then
      echo one of the args that was passed down is not a path to a file
      exit;	
fi

f1hash=$(sha256sum $file1 | cut -f 1 -d ' ')
f2hash=$(sha256sum $file2 | cut -f 1 -d ' ')


if [ "$f2hash" == "$f1hash" ]; then
	echo the file contents are the same;
else
	echo the file contents are not the same ;
fi

