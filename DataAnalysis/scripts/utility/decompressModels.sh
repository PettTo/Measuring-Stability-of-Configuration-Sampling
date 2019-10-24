#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_DATA=${PATH_CURRENT}/data

PATH_Automotive02=${PATH_DATA}/automotive02/models
PATH_FinancialServices01=${PATH_DATA}/financialServices01/models
PATH_BussyBox=${PATH_DATA}/busybox/models
PATH_BussyBox_Monthly=${PATH_DATA}/busybox_monthlySnapshot/models

####### busyBox
for year in ${PATH_BussyBox}/*; do
	cd ${year}
	for run in *.tar.gz; do
		tar -xzvf ${run}
	done
done

###### BusyBox monthly snapshots
cd ${PATH_BussyBox_Monthly}
for year in *.tar.gz; do
		tar -xzvf ${year}
done

####### financialServices01
cd ${PATH_FinancialServices01}
for year in *.tar.gz; do
		tar -xzvf ${year}
done

####### automotive02
cd ${PATH_Automotive02}
for year in *.tar.gz; do
		tar -xzvf ${year}
done



