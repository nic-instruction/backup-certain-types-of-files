# Remove Lock File

Upload `final.sh` to github, remember that `final.sh` must print a usage summery if it is not run with the appropriate number of arguments.

Do not upload your script until it is 100% complete and passes all of your personal tests.  This is a verification environment, not a testing environment, if you have questions, please let me know!


## Specifications
"Remove lock file" script. This script takes a file path as an argument and removes its lockfile. It prints the location of the lockfile and the username of the user who had it open to the screen. I recommend using lsof and ps in conjunction to find the lockfile.

Clarification on the test for this: there are a lot of ways to lock a file, notably, creating a 'lockfile' is different than locking a file using flock or similar (visible via lslocks), though often both are used, sometimes at the very same time, as is the case with libre office.  This test will just ask you to list, and remove the lock file.
