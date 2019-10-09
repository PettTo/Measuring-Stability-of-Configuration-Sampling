#! /bin/bash

# Go to main directory
#cd ..
PATH_CURRENT=$PWD
PATH_SAMPLES=${PATH_CURRENT}/samples/
PATH_FIDE=${PATH_CURRENT}/fideSamples/


####### busyBox
cd ${PATH_FIDE}
for year in *; do 
	echo 'year: '${year}
	cd ./${year}
	mv products_icpl ${PATH_SAMPLES}/${year}/icpl
	mv products_chvatal ${PATH_SAMPLES}/${year}/chvatal
	mv products_incling ${PATH_SAMPLES}/${year}/incling
	mv products_random ${PATH_SAMPLES}/${year}/random
	cd ..
	#for folder in *; do
	#	echo 'folder: '${folder}
	#done 
done



