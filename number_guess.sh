#!/bin/bash
44
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read -r USERNAME

if [[ ${#USERNAME} -gt 22 ]]; then
  echo "Username should be 22 characters or less."
  exit 1
fi

USER_ID=$($PSQL "SELECT u_id FROM users WHERE name = '$USERNAME'")

if [[ $USER_ID ]]; then
  GAMES_PLAYED=$($PSQL "SELECT COUNT(u_id) FROM games WHERE u_id = '$USER_ID'")
  BEST_GUESS=$($PSQL "SELECT MIN(guesses) FROM games WHERE u_id = '$USER_ID'")

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses."
else
  echo "Welcome, $USERNAME! It looks like this is your first time here."

  INSERTED_TO_USERS=$($PSQL "INSERT INTO users(name) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT u_id FROM users WHERE name = '$USERNAME'")
fi

USER_ID=$(echo "$USER_ID" | tr -d '[:space:]')

SECRET=$((1 + RANDOM % 1000))
TRIES=0
GUESSED=0

echo -e "\nGuess the secret number between 1 and 1000:"

while [[ $GUESSED = 0 ]]; do
  read -r GUESS

  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  elif [[ $SECRET -eq $GUESS ]]; then
    TRIES=$((TRIES + 1))
    echo "You guessed it in $TRIES tries. The secret number was $SECRET. Nice job!"
    INSERTED_TO_GAMES=$($PSQL "INSERT INTO games(u_id, guesses) VALUES ($USER_ID, $TRIES)")
    GUESSED=1
  elif [[ $SECRET -gt $GUESS ]]; then
    TRIES=$((TRIES + 1))
    echo "It's higher than that, guess again:"
  else
    TRIES=$((TRIES + 1))
    echo "It's lower than that, guess again:"
  fi
done
