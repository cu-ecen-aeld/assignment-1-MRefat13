#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -eq 2 ]
then
    if [ -d "${filesdir}" ]
    then 
        # Count the number of files in the directory and subdirectories
        file_count=$(find "$filesdir" -type f | wc -l)

        # Count the number of matching lines in the files
        match_count=$(find "$filesdir" -type f -exec grep -c "$searchstr" {} \; | awk '{s+=$1} END {print s}')

        # Print the results
        echo "The number of files are $file_count and the number of matching lines are $match_count"
    else
        echo first argumet dosent represent a dirrectort
        exit 1
    fi    
else
    echo First argumet must be dir path and the second must be keywoerd
    exit 1
fi        