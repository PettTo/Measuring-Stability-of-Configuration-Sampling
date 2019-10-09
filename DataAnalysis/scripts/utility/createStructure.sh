#! /bin/bash

# Go to main directory
#cd ..
PATH_CURRENT=$PWD
PATH_DATA=${PATH_CURRENT}/samples/

####### busyBox
for year in ${PATH_DATA}/*; do
	echo ${year}
	cd ${year}
	for file in *; do
		rm ${file}
	done
	mkdir chvatal
	mkdir icpl
	mkdir incling
	mkdir random
done



