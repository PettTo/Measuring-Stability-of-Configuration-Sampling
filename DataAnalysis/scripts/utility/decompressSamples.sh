#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_DATA=${PATH_CURRENT}/data

PATH_Automotive02=${PATH_DATA}/automotive02/samples
PATH_FinancialServices01=${PATH_DATA}/financialServices01/samples
PATH_BussyBox=${PATH_DATA}/busybox/samples

####### unzip finserv gz
for version in ${PATH_FinancialServices01}/*; do
	for procedure in ${version}/*; do 
		#cd ${procedure}
		for run in ${procedure}/*; do
			for conf in ${run}/*; do
				gunzip ${conf}
			done
		done
	done
done

####### automotive02
#for version in ${PATH_Automotive02}/*; do
#	for procedure in ${version}/*; do 
#		cd ${procedure}
#		for run in *; do
#			tar -xzvf ${run}.tar.gz
#		done
#	done
#done

####### finacnialServices01
#for version in ${PATH_FinancialServices01}/*; do
#	for procedure in ${version}/*; do 
#		cd ${procedure}
#		for run in *; do
#			tar -xzvf ${run}.tar.gz
#		done
#	done
#done

####### busyBox
#for version in ${PATH_BussyBox}/*; do
#	for procedure in ${version}/*; do 
#		cd ${procedure}
#		for run in *; do
#			tar -xzvf ${run}.tar.gz
#		done
#	done
#done



