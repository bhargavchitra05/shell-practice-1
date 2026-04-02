#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/backup.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ $USERID -ne 0 ]; then
    echo -e "$Rplease run this script with root user access $N" 
fi 

mkdir -p $LOGS_FOLDER

USAGE(){
    echo -e "sudo backup <SOURCE_DIR> <DEST_DIR> <DAYS>[default 14 days}"
    exit 1
}

if [ $# -lt 2]; then 
    USAGE
fi



