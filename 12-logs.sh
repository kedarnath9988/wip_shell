#!/bin/bash 

USER=$( id -u )
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$( echo $0 | cut  -d "." -f1) 
LOG_FILE=/tmp/$TIME_STAMP-$SCRIPT_NAME

VALIDAE_FUN() {
if [ $1 -eq 0 ]
then    
    echo " $2 is successfully installed "
else    
    echo "$2 is not installed" 
    exit 1 
fi 
}
if [ $USER -eq 0  ]
then
    echo " you are super user "
else
    echo " you are not super user"
    exit 1 # manually exitinf the scripting 
fi 


dnf install nginx -y $>> $LOG_FILE
VALIDAE_FUN $? nginx 
dnf install git -y  $>> $LOG_FILE
VALIDAE_FUN $? git 
dnf install max -y  $>> $LOG_FILE
VALIDAE_FUN $? max 