#!/bin/bash
ID=$(id -u)
if [ "$ID" -ne 0 ]; then
    echo "ERROR:Please run as root"
else
    echo "Installing MySQL Server..."
fi
