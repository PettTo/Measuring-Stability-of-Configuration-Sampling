#! /bin/bash

# Go to main directory
cd ..
PATH_DataAnalysis=$PWD
PATH_Financialservices01=DataAnalysis/data/financialServices01
PATH_automotive02=DataAnalysis/data/automotive02
PATH_busybox=DataAnalysis/data/busybox
PATH_busybox_monthly=DataAnalysis/data/busybox_monthlySnapshot
	cd ..
	### set up ignore files
	echo "################ Ignore the following directories containing sample folders" > IgnoreSampleFolders.txt
	echo "################ Ignore the following directories containing sample models" > IgnoreModelFolders.txt
	
	###### get sample folders to ignore 
	for version in ${PATH_Financialservices01}/samples/*; do 
		for procedure in ${version}/*; do
			for run in ${procedure}/*; do
			if [[ ${run} != *.tar.gz ]]; 
			then 
				echo /${run} >> IgnoreSampleFolders.txt
			fi
			done
		done
	done
	
	for version in ${PATH_automotive02}/samples/*; do 
		for procedure in ${version}/*; do
			for run in ${procedure}/*; do
			if [[ ${run} != *.tar.gz ]]; 
			then 
				echo /${run} >> IgnoreSampleFolders.txt
			fi
			done
		done
	done
	
	for version in ${PATH_busybox}/samples/*; do 
		for procedure in ${version}/*; do
			for run in ${procedure}/*; do
			if [[ ${run} != *.tar.gz ]]; 
			then 
				echo /${run} >> IgnoreSampleFolders.txt
			fi
			done
		done
	done
	
	for version in ${PATH_busybox_monthly}/samples/*; do 
		for procedure in ${version}/*; do
			for run in ${procedure}/*; do
			if [[ ${run} != *.tar.gz ]]; 
			then 
				echo /${run} >> IgnoreSampleFolders.txt
			fi
			done
		done
	done
	
####### get model folders to be ignored
	for version in ${PATH_busybox_monthly}/models/*; do 
		if [[ ${version} != *.tar.gz ]]; 
		then 
			echo /${version} >> IgnoreModelFolders.txt
		fi
	done
	
	for year in ${PATH_busybox}/models/*; do 
		for version in ${year}/*; do
			if [[ ${version} != *.tar.gz ]]; 
			then 
				echo /${version} >> IgnoreModelFolders.txt
			fi
			done 
	done



