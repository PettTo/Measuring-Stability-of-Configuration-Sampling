#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_DATA=${PATH_CURRENT}/data/

PATH_Automotive02=${PATH_DATA}/automotive02/samples/
PATH_FinancialServices01=${PATH_DATA}/financialServices01/samples/
PATH_BussyBox=${PATH_DATA}/busybox/samples/

for versionfolder in ${PATH_FinancialServices01}; do
	for procedurefolder in ${versionfolder}; do
		gzip -r ${procedurefolder}
	done
done



