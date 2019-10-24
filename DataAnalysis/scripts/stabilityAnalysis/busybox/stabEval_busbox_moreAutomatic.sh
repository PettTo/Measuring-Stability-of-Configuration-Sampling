#! /bin/bash

# Go to main directory
cd .. 
PATH_CURRENT=$PWD
PATH_BASE_MODEL=${PATH_CURRENT}/data/busybox_monthlySnapshot/models/
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/busybox_monthlySnapshot/samples/
PATH_CSV=${PATH_CURRENT}/data/busybox_monthlySnapshot/stability_csv
PATH_RUNTIME=${PATH_CURRENT}/data/busybox_monthlySnapshot/runtime_csv
FILENAME_MODEL=model.xml

PATH_JAR=${PATH_CURRENT}/tools/StabilityCalculator/Jar/StabilityCalculator.jar

cd ${PATH_BASE_MODEL}
array=($(ls -d */))
#echo ${array[@]}
## get length of $array -1
len=${#array[@]}-1
 
## start of similarity analysis
for (( i=0; i<$len; i++ )); do 
	yearOld=${array[$i]}
	echo "YearNew$: "${yearOld};
	yearNew=${array[$i+1]}
	echo "YearNew$: "${yearNew};
	
	# Set up parameters for java execution
	modelOld=${PATH_BASE_MODEL}${yearOld}${FILENAME_MODEL}
	modelNew=${PATH_BASE_MODEL}${yearNew}${FILENAME_MODEL}
	
#### Analysis ROIC Metric
	METRIC=roic
	## Chvatal with ROIC
	PROCEDURE=chvatal
	FILENAME_CSV=chvatal.csv
	FILE_RUNTIME=chvatal_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_chvatal
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	echo ${sampleOld}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	echo ${sampleNew}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
	## ICPL with ROIC
	PROCEDURE=icpl
	FILENAME_CSV=icpl.csv
	FILE_RUNTIME=icpl_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_icpl
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
	## IncLing with ROIC
	PROCEDURE=incling
	FILENAME_CSV=incling.csv
	FILE_RUNTIME=incling_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_incling
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
	## Random with ROIC
	PROCEDURE=random
	FILENAME_CSV=random.csv
	FILE_RUNTIME=random_runtime.csv
	
#	FILENAME_SAMPLE_FOLDER=products_random
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
#### Analysis MSOC Metric
	METRIC=msoc
	## Chvatal with msoc
	PROCEDURE=chvatal
	FILENAME_CSV=chvatal.csv
	FILE_RUNTIME=chvatal_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_chvatal
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
	## ICPL with msoc
	PROCEDURE=icpl
	FILENAME_CSV=icpl.csv
	FILE_RUNTIME=icpl_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_icpl
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
	## IncLing with msoc
	PROCEDURE=incling
	FILENAME_CSV=incling.csv
	FILE_RUNTIME=incling_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_incling
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
	## Random with msoc
	PROCEDURE=random
	FILENAME_CSV=random.csv
	FILE_RUNTIME=icpl_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_random
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
#### Analysis ICST Metric
	METRIC=icst
	## Chvatal with ICST
	PROCEDURE=chvatal
	FILENAME_CSV=chvatal.csv
	FILE_RUNTIME=chvatal_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_chvatal
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
	## ICPL with icst
	PROCEDURE=icpl
	FILENAME_CSV=icpl.csv
	FILE_RUNTIME=icpl_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_icpl
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
	## IncLing with icst
	PROCEDURE=incling
	FILENAME_CSV=incling.csv
	FILE_RUNTIME=incling_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_incling
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
	
	## Random with icst
	PROCEDURE=random
	FILENAME_CSV=random.csv
	FILE_RUNTIME=incling_runtime.csv
	
	FILENAME_SAMPLE_FOLDER=products_random
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	#measure start time 
	start=`date +%s`
	#execute metric
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	# measure ned time and calculate runtime
	end=`date +%s`
	runtime=$((end-start))
	echo ${yearOld}";"${yearNew}";"${runtime} >> ${PATH_RUNTIME}/${METRIC}/${FIlE_RUNTIME}
done



