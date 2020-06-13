#!/bin/bash -x

for files in $(ls)
do
	#Extract entension from files
	ext=${files##*\.}
	case "$ext" in
		java)	echo "$files : Java source file";;
		o)	echo "$files : Object source file";;
		sh)	echo "$files : Shell script";;
		txt)	echo "$files : Text file";;
		*)	echo "$files : unknown";;
	esac
done

