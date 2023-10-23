#!/bin/bash

# Function to generate a random number in a given range
generate_random_number() {
  local min=$1
  local max=$2
  echo $((min + RANDOM % (max - min + 1)))
}

# Function to display game instructions
show_instructions() {
  echo "Welcome to the Realistic Number Guessing Game!"
  echo "You can choose a difficulty level:"
  echo "1. Easy (1-10)"
  echo "2. Medium (1-50)"
  echo "3. Hard (1-100)"
}

# Function to play the game
play_game() {
  local min=$1
  local max=$2

  random_number=$(generate_random_number $min $max)
  score=0

  while true; do
    read -p "Guess the number between $min and $max: " guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
      echo "Please enter a valid number."
    elif [ $guess -lt $min ] || [ $guess -gt $max ]; then
      echo "Your guess is out of range."
    elif [ $guess -lt $random_number ]; then
      echo "Your guess is too low."
      ((score++))
    elif [ $guess -gt $random_number ]; then
      echo "Your guess is too high."
      ((score++))
    else
      ((score++))
      echo "Congratulations! You guessed the number $random_number in $score attempts."
      break
    fi
  done
}

show_instructions

read -p "Select a difficulty level (1/2/3): " choice

case $choice in
  1)
    play_game 1 10
    ;;
  2)
    play_game 1 50
    ;;
  3)
    play_game 1 100
    ;;
  *)
    echo "Invalid choice. Please choose 1, 2, or 3."
    ;;
esac

