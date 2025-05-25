#!/bin/bash

# Check if argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <absolute-directory-path>"
  exit 1
fi

DIR="$1"

if [ -d "$DIR" ]; then
  COUNT=$(find "$DIR" -type f | wc -l)
  echo "There are $COUNT file(s) in '$DIR'."
else
  echo "Directory '$DIR' does not exist."
fi
