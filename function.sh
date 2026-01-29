#!/bin/bash

ID=$(id -u)

VALIDATE() {
    if [ "$1" -ne 0 ]; then
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

# Root check
if [ "$ID" -ne 0 ]; then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "You are root user"
fi

# Check MySQL installation (EXIT CODE BASED)
rpm -q mysql-server &>/dev/null
if [ $? -eq 0 ]; then
    echo "MySQL is already installed"
    exit 0
fi

# Install MySQL
yum install mysql-server -y
VALIDATE $? "MySQL Installation"
