#!/usr/bin/env bash
# File: guessinggame.sh

clear
echo "Hi there! Welcome to my guess game!"
echo "Guess how many files are in the current directory:"
read response

function guessinggame {

while [[ ! $response -eq 5 ]]
do
  if [[ $response -lt 5 ]]
  then
    echo "You are too low. Guess again:"
    read response1
    let response=$response1
  else
    echo "You are too high. Guess again:"
    read response2
    let response=$response2
  fi
done

echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Congratulations! You hit the bull's-eye!"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""
}

guessinggame
