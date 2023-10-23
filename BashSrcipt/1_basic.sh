#!/bin/bash


echo "Please enter some input"

read name

echo "Hello $name!"

echo "Let's play a game"
echo "Are u ready!"

read -p "Enter a number: " num 

if [ $num -gt 10 ]; then 
  echo "$num is greater than 10"
else 
  echo "$num is not greater than 10."

fi 

# Loops 
for fruits in apple banana cherry
do
  echo "I like $fruits"
done


# Functions 
greet(){
  echo "Hello, $1!"
}

greet "First"
greet "second"
