#!/bin/bash

file="./Game_Random_number.sh"

if [ -f "$file" ]; then 
  word_count=$(wc -w < "$file")
  echo "There are $word_count words in $file."
else
  echo "File $file not found."
fi
