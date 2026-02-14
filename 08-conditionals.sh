#!/bin/bash

NUMBER=$1

#-gt -> greather than
#-lt -> less than
#-eq -> equal 
#-ne -> not equal
if [ $NUMBER -gt 20 ]; then
     echo "Given number: $NUMBER is greater than 20"
     else
        echo "Given number: $NUMBER is less than or equal to 20"
     fi









