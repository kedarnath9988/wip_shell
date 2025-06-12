#!/bin/bash 

USER=$( id -u )
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$( echo $0 | cut  -d "." -f1) 

echo "sc is" $TIME_STAMP-$SCRIPT_NAME