#!/bim/bash

num=$1

if [ $num -gt 18]
then
    echo "you are eligible" $num
else 
    echo "you are not eligible" $num
fi 
