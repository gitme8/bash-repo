#!/bin/bash

a="$1"
b="$2"
c="$3"

if [[ "$a" == "apple" && "$b" == "banana" && "$c" == "cherry" ]]; then
  echo "Fruits matched!"
else
  echo "Fruits did not match."
fi

