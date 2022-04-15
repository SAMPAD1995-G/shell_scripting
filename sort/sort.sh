#!/bin/sh
echo "\033[6mPlease enter the file name from which you want to sort\033[0m"
#echo "\033[1mPlease enter the file name\033[0m"
#echo "\033[46mPlease enter the file name\033[0m"
#echo Please enter the file name
read file

echo "\033[6mPlease enter the target file name where you want to save\033[0m"
read target_file

sort -k2 -n  $file -o $target_file # sorting numerical values with respect to the 2nd column
#sort -k2 -n -r  $file -o $target_file # sorting numerical values with respect to the 2nd column in reverse order
#sort -k2 -n $file  # sorting with respect to the 2nd column



# -n –> sorts in numerical values.
# -h –> compares human-readable numbers such as 1k, 1G
# -R –> sort in random order but group the identical keys.
# -r –> sort the values in reverse (descending order).
# -o –> save ouput to a file
# -c –> check if the input file is sorted; do not sort if true.
# -u –> show unique values only.
# -k –> sort the data via a specific key (useful when sorting columnar data).
