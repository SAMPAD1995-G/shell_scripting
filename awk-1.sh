#!/bin/sh
echo 'Enter the data file name'
read data_file

#awk 'END {print NR}' $data_file  # counts the total number of lines in the file

echo
echo The total number of lines in the $data_file file = $(awk 'END {print NR}' $data_file) 
echo

#awk '{print NR,$0}' $data_file > "${data_file%%.*}".out  # extracts all the data with line numbers

awk '{print NR "-",$1=$3, $2=$5}' $data_file > "${data_file%%.*}".out   # extracts data from column three and five and prints with default one shell gap between the columns for all lines with line numbers separated with "-"

#awk '{print NR "-",$1=$3, '\t', '\t', '\t', '\t', '\t', '\t', $2=$5}' $data_file > "${data_file%%.*}".out   # extracts data from column three and five and prints with 6 shell gaps but no column is empty between the columns for all lines with line numbers separated with "-"

#awk '{print NR "-",$1=$3, $2="", $3="", $4="", $5=$5}' $data_file > "${data_file%%.*}".out   # extracts data from column three and five and prints with 3 columns gap for all lines with line numbers separated with "-"


#awk 'NR==1, NR==17 {print NR "-",$0}' $data_file > "${data_file%%.*}".out      # extracts data from line 1 to line 17 from all columns with line numbers separated with "-"

#awk 'NR==2, NR==17 {print $0}' $data_file > "${data_file%%.*}".out

#awk 'NR==2 {print $0}' $data_file         # extracting data from a definite row or line (here 2nd) with all columns

#echo Values of 3rd row-2nd column and 3rd row-5th column are:$(awk 'NR==3 {print $2, $5}' $data_file)      # extracting data from a definite row or line (here 3rd) with 2nd and 5th columns


#echo The length of the longest line in the $data_file file= $(awk '{ if (length($0) > max) max = length($0) } END { print max }' $data_file)  # prints the length of the longest line in the file

#awk 'length($0) > 147' $data_file # prints the lines with more than 147 characters


