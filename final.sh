#!/bin/bash

if [ -z $2 ]
then
        echo "
        Usage: script [-q] [file extension] [target directory]
        Example: script .dump /backup
        Example: script -q .dump /backup # This option will produce no output.
        This script is used to remove all files of a certain type from a specified directory
        "
fi
fileExtension="$1"
targetDir="$2"
echo "file extension is: $fileExtension"
echo "target dir is: $targetDir"


if [ ! -e "$targetDir" ]
then
        echo "$targetDir does not exist, please enter a valid target dir"
        exit 0;
fi


find "$targetDir" -name "*$fileExtension" -exec rm -f {} \;
