#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_BASE_MODEL=${PATH_CURRENT}/data/automotive02/models
PATH_CSV=${PATH_CURRENT}/data/automotive02/stability_csv
#FILENAME_MODEL=model.xml

########## calculate stability of incling
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/automotive02/samples/
FILENAME_CSV=incling4.csv
FILENAME_INTERFOLDER=IncLing
FILENAME_SAMPLE_FOLDER=products_IncLing4
###first time step
prevFolder=model00001.xml
newFolder=model00002.xml

prevVersion=Version1
newVersion=Version2
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###first time step
prevFolder=model00002.xml
newFolder=model00003.xml

prevVersion=Version2
newVersion=Version3
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###third time step
prevFolder=model00003.xml
newFolder=model00004.xml

prevVersion=Version3
newVersion=Version4
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}




########## calculate stability of random
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/automotive02/samples/
FILENAME_CSV=random4.csv
FILENAME_INTERFOLDER=Random
FILENAME_SAMPLE_FOLDER=products_Rand4
###first time step
prevFolder=model00001.xml
newFolder=model00002.xml

prevVersion=Version1
newVersion=Version2
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###first time step
prevFolder=model00002.xml
newFolder=model00003.xml

prevVersion=Version2
newVersion=Version3
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###third time step
prevFolder=model00003.xml
newFolder=model00004.xml

prevVersion=Version3
newVersion=Version4
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}
