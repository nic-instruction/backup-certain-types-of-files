#!/bin/bash

if [ -z "$1" ]
then
     echo "Usage:"
fi

fullpath="$1"
docdir=$(dirname $fullpath)
filename=$(basename $fullpath)

echo "removing .~lock.$filename#"
rm .~lock."$filename"#
