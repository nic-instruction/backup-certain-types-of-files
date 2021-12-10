!/bin/bash
# "Remove certain types of files" script. This script takes two arguments: a file extension and a target 
directory name. The script traverses the target directory and removes all files of the specified type. By
 default, it should print the name and path of every file it removes. It should also have a 'quiet' mode 
where it does not print anything. I recommend using the Linux find command with the -exec option to accom
plish the meat of this functionality in your script.
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
targetDir="$3"
backupDir="$2"
echo "file extension is: $fileExtension"
echo "target dir is: $targetDir"
# figure out how the user can tell me if they want quiet mode or normal mode
# test and see if the user has given me a q
# test to make sure the target directory exists
if [ ! -d "$targetDir" ]
then
        echo "$targetDir does not exist, please enter a valid target dir"
        exit 0;
fi


find "$backupDir" -name "*$fileExtension" -exec cp {} "$targetDir"  \;
