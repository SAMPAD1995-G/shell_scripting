#!/bin/sh
echo "Enter the source file name with path"
read source_file
echo "Enter the target file name with path with which the linking is to be done"
read target_file
#link $source_file $target_file
# or
ln $source_file $target_file
