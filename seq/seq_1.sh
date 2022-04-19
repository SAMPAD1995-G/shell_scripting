#!/bin/sh
# seq is used to generate list of numbers, useful in the while, for, until loop.

#seq 15         # only last number(15): default first number is 1 and increment is also 1

#seq 5 15       # first(5) and last(15) numbers: default increment is 1

#seq 1 2 15     # first number(1) increment(2) last number(15)

#seq 15 -2 1    # first number(15) increment(-2) last number(1)


#seq -w 1 2 15   # '-w' option equalizes width by padding with leading zeroes

#seq -s "x" 1 2 15  # numbers are separated by the string "x"

#seq -s " " 1 2 15    # numbers are separated by single character gap 

#seq -s "   " 1 2 15   # numbers are separated by three characters gap

seq -f "POSCAR-%01g" 6 # generate sequence in a formatted manner

