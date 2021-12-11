#!/bin/bash

if [ -z "$1" ]
then
     echo "Usage:"
     exit 0;
fi

filename="$1"
cp $filename $filename.bak

vim -u NONE -r ."$filename".swp -c 'w! '"$filename"'' -c 'wq!'

sdiff $filename $filename.bak
