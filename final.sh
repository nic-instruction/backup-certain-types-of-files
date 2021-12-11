#!/bin/bash

if [ -z "$1" ]
then
     echo "Usage:"
     exit 0;
fi

filename="$1"
cp $filename $filename.bak

finddir=$(dirname $filename)

tempfile=$(basename $filename)
tempfile="$finddir.$tempfile.swp"

vim -u NONE -r "$tempfile" -c 'w! '"$filename"'' -c 'wq!'

sdiff $filename $filename.bak
