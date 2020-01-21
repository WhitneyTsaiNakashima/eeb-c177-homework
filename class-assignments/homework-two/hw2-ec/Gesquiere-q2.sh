#!/bin/bash

# function of script:
# cut first column of file (arg1-$1)
# count number of times arg2 ($2) occurs

cut -f 1 $1 | grep -c -w $2
