#!/bin/bash

# Check if the required arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

writefile=$1
writestr=$2


# Create the file and write the content
mkdir -p "$(dirname "$writefile")"
echo "$writestr" > "$writefile"

if [ ! -e ${writefile} ]
then
    echo NOOOOOOOO
    exit 1
fi