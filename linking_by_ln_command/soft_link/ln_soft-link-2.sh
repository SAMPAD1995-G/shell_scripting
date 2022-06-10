#!/bin/sh
echo "Enter the target directory with path where the linking is to be done"
read target_dir                   # like target1
cd $target_dir
echo "Enter the source file name with path from the target directory"
read source_file_and_path        # like ../INCAR
#ln -s $source_file_and_path
ln -sf $source_file_and_path
cd ..
