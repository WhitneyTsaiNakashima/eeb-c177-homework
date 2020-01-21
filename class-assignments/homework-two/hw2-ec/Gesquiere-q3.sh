#!/bin/bash

# function:
# count number of times each baboon was sampled in Gesquiere2011_data.csv
# 1. create a list containing all baboon IDs (babIDs) and store it in a variable
# 2. run a for loop counting the number of times each baboon was sampled

babIDs=`tail -n +2 ~/Developer/repos/CSB/unix/data/Gesquiere2011_data.csv | cut -f -1 | sort -n |uniq`

for bab in $babIDs
do
  counts=`cut -f 1 ~/Developer/repos/CSB/unix/data/Gesquiere2011_data.csv | grep -c -w $bab`
  echo "ID:" $bab "counts:" $counts
done
