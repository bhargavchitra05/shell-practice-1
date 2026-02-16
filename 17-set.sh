#!/bin/bash

set -e # this will be checking for errors, if errors it will exit

#!/bin/bash



USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if  [ $USERID -ne 0 ]; then
    echo -e "$Rplease run this script with root user access $N" | tee -a $LOGS_FILE
 
 
    exit 1 
fi
mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$2 ....$N FAILURE" | tee -a $LOGS_FILE
        exit 1
    else
        echo -e "$2 .... $Y SUCCESS" |  tee -a $LOGS_FILE
    fi 
}


for package in $@ #sudo sh 14-loops.sh nginx mysql nodejs
do
    dnf installed $package -y &>>$LOGS_FILE
    if [ $? -ne 0 ]; then
    echo "$package not installed, installing now"
     dnf install $package -y &>>$LOGS_FILE
    #VALIDATE $? "$package installation"
    else
        echo "$package already installed ......$Y skipping $N"
    fi
done 













































































