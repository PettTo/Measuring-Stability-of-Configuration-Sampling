#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_BASE_MODEL=${PATH_CURRENT}/data/busybox_linux/models/2010_inwork
PATH_CSV=${PATH_CURRENT}/data/busybox_linux/stability_csv
FILENAME_MODEL=model.xml

########## calculate stability of chvatal
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/busybox_linux/samples/chvatal
FILENAME_CSV=chvatal.csv
FILENAME_SAMPLE_FOLDER=products_chvatal
###first time step
prevFolder=2010-05-04_15-45-25
newFolder=2010-05-05_00-40-15
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###second time step
prevFolder=2010-05-05_00-40-15
newFolder=2010-05-06_14-19-19
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###third time step
prevFolder=2010-05-06_14-19-19
newFolder=2010-05-06_16-56-38
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###fourth time step
prevFolder=2010-05-06_16-56-38
newFolder=2010-05-06_17-05-22
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###fifth time step
prevFolder=2010-05-06_17-05-22
newFolder=2010-05-06_20-08-14
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}



########## calculate stability of chvatal
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/busybox_linux/samples/icpl
FILENAME_CSV=icpl.csv
FILENAME_SAMPLE_FOLDER=products_icpl
###first time step
prevFolder=2010-05-04_15-45-25
newFolder=2010-05-05_00-40-15
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###second time step
prevFolder=2010-05-05_00-40-15
newFolder=2010-05-06_14-19-19
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###third time step
prevFolder=2010-05-06_14-19-19
newFolder=2010-05-06_16-56-38
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###fourth time step
prevFolder=2010-05-06_16-56-38
newFolder=2010-05-06_17-05-22
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###fifth time step
prevFolder=2010-05-06_17-05-22
newFolder=2010-05-06_20-08-14
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}



########## calculate stability of incling
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/busybox_linux/samples/incling
FILENAME_CSV=inciling.csv
FILENAME_SAMPLE_FOLDER=products_incling
###first time step
prevFolder=2010-05-04_15-45-25
newFolder=2010-05-05_00-40-15
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###second time step
prevFolder=2010-05-05_00-40-15
newFolder=2010-05-06_14-19-19
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###third time step
prevFolder=2010-05-06_14-19-19
newFolder=2010-05-06_16-56-38
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###fourth time step
prevFolder=2010-05-06_16-56-38
newFolder=2010-05-06_17-05-22
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###fifth time step
prevFolder=2010-05-06_17-05-22
newFolder=2010-05-06_20-08-14
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}







########## calculate stability of random
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/busybox_linux/samples/random
FILENAME_CSV=random.csv
FILENAME_SAMPLE_FOLDER=products_random
###first time step
prevFolder=2010-05-04_15-45-25
newFolder=2010-05-05_00-40-15
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###second time step
prevFolder=2010-05-05_00-40-15
newFolder=2010-05-06_14-19-19
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###third time step
prevFolder=2010-05-06_14-19-19
newFolder=2010-05-06_16-56-38
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###fourth time step
prevFolder=2010-05-06_16-56-38
newFolder=2010-05-06_17-05-22
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###fifth time step
prevFolder=2010-05-06_17-05-22
newFolder=2010-05-06_20-08-14
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${prevFolder}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder}/${FILENAME_MODEL} ${PATH_BASE_SAMPLE}/${newFolder}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

