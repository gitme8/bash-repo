#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

sql=$(rpm -q mysql)
if [ "$sql" != "package mysql is not installed" ]
then
    echo "MySQL is already installed"
    exit 0
else
    VALIDATE $? "Installing MySQL"
    yum install mysql -y

fi
VALIDATE $? "MySQL Installation"