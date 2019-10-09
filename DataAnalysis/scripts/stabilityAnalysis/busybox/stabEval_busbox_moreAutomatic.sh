#! /bin/bash

# Go to main directory
cd .. 
PATH_CURRENT=$PWD
PATH_BASE_MODEL=${PATH_CURRENT}/data/busybox_monthlySnapshot/models/
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/busybox_monthlySnapshot/samples/
PATH_CSV=${PATH_CURRENT}/data/busybox_monthlySnapshot/stability_csv
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
	
	FILENAME_SAMPLE_FOLDER=products_chvatal
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	echo ${sampleOld}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	echo ${sampleNew}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
	## ICPL with ROIC
	PROCEDURE=icpl
	FILENAME_CSV=icpl.csv
	
	FILENAME_SAMPLE_FOLDER=products_icpl
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
	## IncLing with ROIC
	PROCEDURE=incling
	FILENAME_CSV=incling.csv
	
	FILENAME_SAMPLE_FOLDER=products_incling
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
	## Random with ROIC
	PROCEDURE=random
	FILENAME_CSV=random.csv
	
#	FILENAME_SAMPLE_FOLDER=products_random
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
#### Analysis MSOC Metric
	METRIC=msoc
	## Chvatal with msoc
	PROCEDURE=chvatal
	FILENAME_CSV=chvatal.csv
	
	FILENAME_SAMPLE_FOLDER=products_chvatal
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
	## ICPL with ROIC
	PROCEDURE=icpl
	FILENAME_CSV=icpl.csv
	
	FILENAME_SAMPLE_FOLDER=products_icpl
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
	## IncLing with ROIC
	PROCEDURE=incling
	FILENAME_CSV=incling.csv
	
	FILENAME_SAMPLE_FOLDER=products_incling
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
	## Random with ROIC
	PROCEDURE=random
	FILENAME_CSV=random.csv
	
	FILENAME_SAMPLE_FOLDER=products_random
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
	
#### Analysis ICST Metric
	METRIC=icst
	## Chvatal with ICST
	PROCEDURE=chvatal
	FILENAME_CSV=chvatal.csv
	
	FILENAME_SAMPLE_FOLDER=products_chvatal
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
	## ICPL with ROIC
	PROCEDURE=icpl
	FILENAME_CSV=icpl.csv
	
	FILENAME_SAMPLE_FOLDER=products_icpl
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
	## IncLing with ROIC
	PROCEDURE=incling
	FILENAME_CSV=incling.csv
	
	FILENAME_SAMPLE_FOLDER=products_incling
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}
	
	## Random with ROIC
	PROCEDURE=random
	FILENAME_CSV=random.csv
	
	FILENAME_SAMPLE_FOLDER=products_random
	sampleOld=${PATH_BASE_SAMPLE}${yearOld}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	sampleNew=${PATH_BASE_SAMPLE}${yearNew}${PROCEDURE}/${FILENAME_SAMPLE_FOLDER}
	
	java -Xmx9g -jar ${PATH_JAR} ${METRIC} ${PATH_CSV} ${FILENAME_CSV} ${modelOld} ${sampleOld}/ ${modelNew} ${sampleNew}/ ${yearOld} ${yearNew}	
done



