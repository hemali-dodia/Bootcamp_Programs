#!/bin/bash -x

for files in `ls *.txt`;
do
	foldername=`echo $files | awk -F. '{print $1}'`;
	echo "checking for directories existed"
	if [ -d $foldername ]
	then
		rm -r $foldername;
	fi
	#echo creating folder $foldername;
	mkdir $foldername;
	#echo copy $files to $foldername;
	cp $files $foldername;
done
