#!/bin/bash
echo                                      # used for linespacing
echo                                      # used for linespacing
echo Give the path to the destination directory where to edit
echo
read directory_path
pushd $directory_path
echo                                      # used for linespacing
echo Now the directory stack is = $(dirs)
echo
echo Doing something in the destination directory
touch Completed
echo
echo Now back to the initial directory
echo
popd
echo                                      # used for linespacing
echo Now the directory stack is = $(dirs)
echo
echo listing destination directory = $(ls $directory_path)
#echo
#ls $directory_path
