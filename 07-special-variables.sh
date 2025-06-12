#!/bin/bash

echo "to known all variables passed in in CLI "$@

echo "to count "$#

echo " current shell script name is " $0 

echo " to know current user is" $USER

echo "current work-dir" $PWD 

echo "to host name is " $HOSTNAME

echo "pid of the current command is " $$

sleep 600 & 

echo " pid of the previous command is" $!

