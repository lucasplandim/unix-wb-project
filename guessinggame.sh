#!/usr/bin/env bash
# File: guessinggame.sh

# Get the response of the user and compare with the number of files in my current directory
function guessinggame {

clear
echo "Hi there! Welcome to my guess game!"
echo "Guess how many files are in the current directory:"
read response

count=$(ls -l |grep "^-"|wc -l)

while [[ ! $response -eq $count ]]
do
  if [[ $response -lt $count ]]
  then
    echo "You are too low. Guess again:"
    read response
  else
    echo "You are too high. Guess again:"
    read response
  fi
done

echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Congratulations! You hit the bull's-eye!"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""
}

# Call guessinggame function
guessinggame
