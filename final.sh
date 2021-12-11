#!/bin/bash

if [ -z "$1" ]
then
     echo "Usage:"
     exit 0;
fi

filename="$1"
cp $filename $filename.bak

cwd=$(pwd)

vim -u NONE -r .$filename.swp -c "w $cwd/$filename!" -c q

sdiff $filename $filename.bak
