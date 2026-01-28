#!/bin/bash
a=$1
b=$2
c=$3
if [ $a -eq "apple" ] && [ $b -eq "banana" ] && [ $c -eq "cherry" ]; then
  echo "Fruits matched!"
else
  echo "Fruits did not match."
fi
