#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_DATA=${PATH_CURRENT}/data

PATH_Automotive02=${PATH_DATA}/automotive02/samples
PATH_FinancialServices01=${PATH_DATA}/financialServices01/samples
PATH_BussyBox=${PATH_DATA}/busybox/samples
PATH_BussyBox_Monthly=${PATH_DATA}/busybox_monthlySnapshot/samples

####### automotive02
for version in ${PATH_Automotive02}/*; do
	for procedure in ${version}/*; do 
		cd ${procedure}
		for run in *.tar.gz; do
			tar -xzvf ${run}
		done
	done
done

####### finacnialServices01
for version in ${PATH_FinancialServices01}/*; do
	for procedure in ${version}/*; do 
		cd ${procedure}
		for run in *.tar.gz; do
			tar -xzvf ${run}
		done
	done
done

####### busyBox monthly
for version in ${PATH_BussyBox_Monthly}/*; do
	for procedure in ${version}/*; do 
		cd ${procedure}
		for run in *.tar.gz; do
			tar -xzvf ${run}
		done
	done
done

####### busyBox currently not used 
#for version in ${PATH_BussyBox}/*; do
#	for procedure in ${version}/*; do 
#		cd ${procedure}
#		for run in *.tar.gz; do
#			tar -xzvf ${run}
#		done
#	done
#done



