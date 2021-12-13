# Remove A Lock File

Upload `final.sh` to github, remember that `final.sh` must print a usage summery if it is not run with the appropriate number of arguments.

Do not upload your script until it is 100% complete and passes all of your personal tests.  This is a verification environment, not a testing environment, if you have questions, please let me know!


## Specifications

"Remove lock file" script. This script takes a file path as an argument and removes its lockfile. It prints the location of the lockfile and the username of the user who had it open to the screen (printing the username is optional). Note that a lockfile is not the same as locking a file. An easy way to create a lockfile is to create a document using libre office writer (from the gui), save it, and begin editing it. If you do an ls -la in the dir where it is saved from the terminal, you will notice there is a file there that starts with .~lock followed by the filename of your file and ending with the # sign. That is the lock file. Your job is to figure out how to use the rm command to remove this file based on the filename you are given!
