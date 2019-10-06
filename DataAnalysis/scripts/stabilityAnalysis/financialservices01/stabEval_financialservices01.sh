#! /bin/bash

# Go to main directory
cd ..
PATH_CURRENT=$PWD
PATH_BASE_MODEL=${PATH_CURRENT}/data/financialServices01/models/
PATH_CSV=${PATH_CURRENT}/data/financialServices01/stability_csv
#FILENAME_MODEL=model.xml

########## calculate stability of chvatal
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/financialServices01/samples/
FILENAME_CSV=chvatal2.csv
FILENAME_INTERFOLDER=Chvatal
FILENAME_SAMPLE_FOLDER=products_Chvatal2
###time step 1
prevFolder=model00001.xml
newFolder=model00002.xml

prevVersion=FinancialServices_2017-05-22
newVersion=FinancialServices_2017-09-28
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 2
prevFolder=model00002.xml
newFolder=model00003.xml

prevVersion=FinancialServices_2017-09-28
newVersion=FinancialServices_2017-10-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 3
prevFolder=model00003.xml
newFolder=model00004.xml

prevVersion=FinancialServices_2017-10-20
newVersion=FinancialServices_2017-11-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 4
prevFolder=model00004.xml
newFolder=model00005.xml

prevVersion=FinancialServices_2017-11-20
newVersion=FinancialServices_2017-12-22
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 5
prevFolder=model00005.xml
newFolder=model00006.xml

prevVersion=FinancialServices_2017-12-22
newVersion=FinancialServices_2018-01-23
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 6
prevFolder=model00006.xml
newFolder=model00007.xml

prevVersion=FinancialServices_2018-01-23
newVersion=FinancialServices_2018-02-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 7
prevFolder=model00007.xml
newFolder=model00008.xml

prevVersion=FinancialServices_2018-02-20
newVersion=FinancialServices_2018-03-26
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 8
prevFolder=model00008.xml
newFolder=model00009.xml

prevVersion=FinancialServices_2018-03-26
newVersion=FinancialServices_2018-04-23
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 9
prevFolder=model00009.xml
newFolder=model00010.xml

prevVersion=FinancialServices_2018-04-23
newVersion=FinancialServices_2018-05-09
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}






########## calculate stability of icpl
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/financialServices01/samples/
FILENAME_CSV=icpl2.csv
FILENAME_INTERFOLDER=ICPL
FILENAME_SAMPLE_FOLDER=products_ICPL2
###time step 1
prevFolder=model00001.xml
newFolder=model00002.xml

prevVersion=FinancialServices_2017-05-22
newVersion=FinancialServices_2017-09-28
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 2
prevFolder=model00002.xml
newFolder=model00003.xml

prevVersion=FinancialServices_2017-09-28
newVersion=FinancialServices_2017-10-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 3
prevFolder=model00003.xml
newFolder=model00004.xml

prevVersion=FinancialServices_2017-10-20
newVersion=FinancialServices_2017-11-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 4
prevFolder=model00004.xml
newFolder=model00005.xml

prevVersion=FinancialServices_2017-11-20
newVersion=FinancialServices_2017-12-22
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 5
prevFolder=model00005.xml
newFolder=model00006.xml

prevVersion=FinancialServices_2017-12-22
newVersion=FinancialServices_2018-01-23
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 6
prevFolder=model00006.xml
newFolder=model00007.xml

prevVersion=FinancialServices_2018-01-23
newVersion=FinancialServices_2018-02-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 7
prevFolder=model00007.xml
newFolder=model00008.xml

prevVersion=FinancialServices_2018-02-20
newVersion=FinancialServices_2018-03-26
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 8
prevFolder=model00008.xml
newFolder=model00009.xml

prevVersion=FinancialServices_2018-03-26
newVersion=FinancialServices_2018-04-23
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 9
prevFolder=model00009.xml
newFolder=model00010.xml

prevVersion=FinancialServices_2018-04-23
newVersion=FinancialServices_2018-05-09
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}







########## calculate stability of IncLing
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/financialServices01/samples/
FILENAME_CSV=incling2.csv
FILENAME_INTERFOLDER=IncLing
FILENAME_SAMPLE_FOLDER=products_incling2
###time step 1
prevFolder=model00001.xml
newFolder=model00002.xml

prevVersion=FinancialServices_2017-05-22
newVersion=FinancialServices_2017-09-28
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 2
prevFolder=model00002.xml
newFolder=model00003.xml

prevVersion=FinancialServices_2017-09-28
newVersion=FinancialServices_2017-10-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 3
prevFolder=model00003.xml
newFolder=model00004.xml

prevVersion=FinancialServices_2017-10-20
newVersion=FinancialServices_2017-11-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 4
prevFolder=model00004.xml
newFolder=model00005.xml

prevVersion=FinancialServices_2017-11-20
newVersion=FinancialServices_2017-12-22
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 5
prevFolder=model00005.xml
newFolder=model00006.xml

prevVersion=FinancialServices_2017-12-22
newVersion=FinancialServices_2018-01-23
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 6
prevFolder=model00006.xml
newFolder=model00007.xml

prevVersion=FinancialServices_2018-01-23
newVersion=FinancialServices_2018-02-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 7
prevFolder=model00007.xml
newFolder=model00008.xml

prevVersion=FinancialServices_2018-02-20
newVersion=FinancialServices_2018-03-26
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 8
prevFolder=model00008.xml
newFolder=model00009.xml

prevVersion=FinancialServices_2018-03-26
newVersion=FinancialServices_2018-04-23
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 9
prevFolder=model00009.xml
newFolder=model00010.xml

prevVersion=FinancialServices_2018-04-23
newVersion=FinancialServices_2018-05-09
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}







########## calculate stability of Random
PATH_BASE_SAMPLE=${PATH_CURRENT}/data/financialServices01/samples/
FILENAME_CSV=random2.csv
FILENAME_INTERFOLDER=Random
FILENAME_SAMPLE_FOLDER=products_Rand2
###time step 1
prevFolder=model00001.xml
newFolder=model00002.xml

prevVersion=FinancialServices_2017-05-22
newVersion=FinancialServices_2017-09-28
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 2
prevFolder=model00002.xml
newFolder=model00003.xml

prevVersion=FinancialServices_2017-09-28
newVersion=FinancialServices_2017-10-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 3
prevFolder=model00003.xml
newFolder=model00004.xml

prevVersion=FinancialServices_2017-10-20
newVersion=FinancialServices_2017-11-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 4
prevFolder=model00004.xml
newFolder=model00005.xml

prevVersion=FinancialServices_2017-11-20
newVersion=FinancialServices_2017-12-22
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 5
prevFolder=model00005.xml
newFolder=model00006.xml

prevVersion=FinancialServices_2017-12-22
newVersion=FinancialServices_2018-01-23
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 6
prevFolder=model00006.xml
newFolder=model00007.xml

prevVersion=FinancialServices_2018-01-23
newVersion=FinancialServices_2018-02-20
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 7
prevFolder=model00007.xml
newFolder=model00008.xml

prevVersion=FinancialServices_2018-02-20
newVersion=FinancialServices_2018-03-26
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 8
prevFolder=model00008.xml
newFolder=model00009.xml

prevVersion=FinancialServices_2018-03-26
newVersion=FinancialServices_2018-04-23
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}

###time step 9
prevFolder=model00009.xml
newFolder=model00010.xml

prevVersion=FinancialServices_2018-04-23
newVersion=FinancialServices_2018-05-09
#Execute
java -Xmx9g -jar ./tools/stability_evaluator/StabilityCalculator_icst.jar ${PATH_CSV}/${FILENAME_CSV} ${PATH_BASE_MODEL}/${prevFolder} ${PATH_BASE_SAMPLE}/${prevVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${PATH_BASE_MODEL}/${newFolder} ${PATH_BASE_SAMPLE}/${newVersion}/${FILENAME_INTERFOLDER}/${FILENAME_SAMPLE_FOLDER}/ ${prevFolder} ${newFolder}
