#!/bin/sh
for i in `seq -w 1 1 05`
do 
 mkdir dir-$i
 cd dir-$i
 ln -sf ../INCAR
 cd ..
done
