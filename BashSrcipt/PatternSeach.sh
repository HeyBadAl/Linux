#!/bin/bash

file="./Game_Random_number.sh" 
pattern="echo"

if [ -f "$file" ]; then
  if grep -q "$pattern" "$file"; then
    echo "The pattern '$pattern' was found in $file."
  else
    echo "The pattern '$pattern' was not found in $file."
  fi
else
  echo "File $file not found."
fi

