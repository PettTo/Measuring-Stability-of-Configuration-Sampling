#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_DATA=${PATH_CURRENT}/data

PATH_Automotive02=${PATH_DATA}/automotive02/models
PATH_FinancialServices01=${PATH_DATA}/financialServices01/models
PATH_BussyBox=${PATH_DATA}/busybox_monthlySnapshot/models

####### busyBox
cd ${PATH_BussyBox}
for year in *; do
	tar -zcvf ${year}.tar.gz ${year}
	#echo ${year}
#	for run in *; do
#		tar -zcvf ${run}.tar.gz ${run}
#		rm ${run}
#	done
done




