#!/bin/bash

if [ -e .~lock.example_file.odt# ]
then
     echo "the script did not delete the files"
     exit 0;
else
     echo "sucess!  the script deleted the files!"
fi
