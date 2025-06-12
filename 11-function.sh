#!/bin/bash

USER=$( id -u )

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

dnf install nginx -y 

VALIDAE_FUN $? nginx

dnf install git  -y 

VALIDAE_FUN $? git

dnf install gcc -y 

VALIDAE_FUN $? gcc