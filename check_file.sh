#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <check_file.txt>"
  exit 1
fi

FILENAME="$1"

if [ -f "$FILENAME" ]; then
  echo "File '$FILENAME' exists."
else
  echo "File '$FILENAME' does not exist."
fi
