#!/usr/bin/env bash
# File: guessinggame.sh

# Get the number of files in my current directory
function getthecount {
cnt=$(find . -maxdepth 1 -type f|wc -l)
  echo $cnt
}

# Get the entry of the user and compare with the number of files returned in the getthecount function
function guessinggame {

count=$(getthecount)

clear
echo "Hi there! Welcome to my guess game!"
echo "Guess how many files are in the current directory:"
read response

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
