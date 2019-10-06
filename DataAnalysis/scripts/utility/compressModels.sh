#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_DATA=${PATH_CURRENT}/data

PATH_Automotive02=${PATH_DATA}/automotive02/models
PATH_FinancialServices01=${PATH_DATA}/financialServices01/models
PATH_BussyBox=${PATH_DATA}/busybox/models

####### busyBox
for year in ${PATH_BussyBox}/*; do
	cd ${year}
	for run in *; do
		tar -zcvf ${run}.tar.gz ${run}
	done
done



