#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_DATA=${PATH_CURRENT}/data/

PATH_Automotive02=${PATH_DATA}/automotive02/samples/
PATH_FinancialServices01=${PATH_DATA}/financialServices01/samples/
PATH_BussyBox=${PATH_DATA}/busybox/samples/

####### automotive02
for version in ${PATH_Automotive02}/*; do
	for procedure in ${version}/*; do 
		cd ${procedure}
		rm *.tar.gz
	done
done

####### financialServices01
for version in ${PATH_FinancialServices01}/*; do
	for procedure in ${version}/*; do 
		cd ${procedure}
		rm *.tar.gz
	done
done

####### busyBox
for version in ${PATH_BussyBox}/*; do
	for procedure in ${version}/*; do 
		cd ${procedure}
		rm *.tar.gz
	done
done



