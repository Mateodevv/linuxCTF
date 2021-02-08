#!/bin/bash

FILE=/home/ubuntu/challenge5
if [ -f "$FILE" ]; then
    echo "password5"
else
  echo "password4"
fi
