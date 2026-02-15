#!/bin/bash

USERID=$(id -u)

if  [ $USERID -ne 0 ]; then
    echo "please run this script with root user access"
    exit 1
fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing Nginx .... FAILURE"
    exit 1
else
    echo "Installing Nginx .... SUCCESS"
fi 

dnf install mysq ...-y
if [ $? -ne 0 ]; then
    echo "Installing mysql .... FAILURE"
    exit 1
else
    echo "Installing MySQL .... SUCCESS"
fi 

dnf install nodejs -y
if [ $? -ne 0 ]; then
    echo "Installing nodejs .... FAILURE"
    exit 1
else
    echo "Installing nodejs  .... SUCCESS"
fi 
