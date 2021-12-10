#!/bin/bash

if [ -e test1.testtt ] || [ -e test1.mp3 ]
then
     echo "the script did not delete the files"
     exit 0;
else
     echo "sucess!  the script deleted the files!"
fi
