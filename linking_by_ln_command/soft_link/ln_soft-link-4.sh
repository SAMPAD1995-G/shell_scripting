#!/bin/sh
echo "Enter the start of the sequence"
read start
echo "Enter the step of the sequence"
read step
echo "Enter the stop of the sequence"
read stop
for i in `seq -w $start $step $stop`
do 
 mkdir dir-$i
 cd dir-$i
 ln -sf ../INCAR
 cd ..
done
