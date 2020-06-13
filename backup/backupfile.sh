#!/bin/bash -x

folder=`ls *backup`
for files in `ls *.txt`;
do

	#echo copy $files to $foldername;
	cp $files $folder;
done
