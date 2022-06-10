#!/bin/sh
echo "Enter the source file name with path"
read source_file                # like INCAR
echo "Enter the target file name with path with which the linking is to be done"
read target_file
#ln -s $source_file $target_file  # like target1/INCAR
ln -sf $source_file $target_file
