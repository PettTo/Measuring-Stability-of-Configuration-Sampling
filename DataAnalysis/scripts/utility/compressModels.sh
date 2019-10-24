#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_DATA=${PATH_CURRENT}/data

PATH_Automotive02=${PATH_DATA}/automotive02/models
PATH_FinancialServices01=${PATH_DATA}/financialServices01/models
PATH_BussyBox=${PATH_DATA}/busybox_monthlySnapshot/models

####### busyBox
#cd ${PATH_BussyBox}
#for year in *; do
#	tar -zcvf ${year}.tar.gz ${year}
#done

cd ${PATH_FinancialServices01}
for year in *; do
	tar -zcvf ${year}.tar.gz ${year}
done

cd ${PATH_Automotive02}
for year in *; do
	tar -zcvf ${year}.tar.gz ${year}
done




