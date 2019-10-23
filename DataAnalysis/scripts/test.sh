#! /bin/bash

# Go to main directory


PATH_Automotive02=auto
echo ${PATH_Automotive02} >> test.txt

PATH_Automotive02=automot
echo ${PATH_Automotive02} >> test.txt

PATH_Automotive02=automotive02
echo ${PATH_Automotive02} >> test.txt

for i in 1 2 3 4 5
do
start=`date +%s`
sleep 20s
end=`date +%s`
runtime=$((end-start))
echo "runtime;"${runtime}";run finished" >> test.txt
done










