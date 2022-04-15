#!/bin/bash
echo                                      # used for linespacing
echo ======================================Using cd command=========================================
echo                                      # used for linespacing
echo Current directory stack= $(dirs)  # 'dirs' is the command to show directory stack
echo Give the path to the destination directory   #say dir1/dir2/dir3
read directory_path
echo Entering to the destination directory using cd command
cd $directory_path
echo                                      # used for linespacing
echo Now the directory stack is = $(dirs)
echo Now leaving the destination directory 
cd ../../../
echo                                      # used for linespacing
echo Now the directory stack is = $(dirs)


#---------------------------------------------vs-----------------------------------------------------
echo                                      # used for linespacing
echo                                      # used for linespacing
echo =====================================Using pushd and popd======================================
echo                                      # used for linespacing
echo Current directory stack= $(dirs)  # 'dirs' is the command to show directory stack
echo Give the path to the destination directory
read directory_path
echo Entering to the destination directory using pushd command
pushd $directory_path
echo                                      # used for linespacing
echo Now the directory stack is = $(dirs)
echo Now back to the original directory using single popd command
popd
echo                                      # used for linespacing
echo Now the directory stack is = $(dirs)
