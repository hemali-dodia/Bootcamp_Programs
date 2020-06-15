#!/bin/bash -x

shopt -s extglob

for imgFile in `ls`
do
	case $imgFile in
		!(*.png|*.jpg|*.gif))	echo "not image $imgFile";;
		*)	echo "image file $imgFile"
	esac
done
