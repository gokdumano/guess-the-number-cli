#!/bin/bash

trap 'echo; echo "Thank you for playing! Goodbye!"; exit 0' SIGINT

echo "
Welcome to the Number Guessing Game!
I'm thinking of a number between 1 and 100.
Please select the difficulty level:
    1. Easy (10 chances)
    2. Medium (5 chances)
    3. Hard (3 chances)
"
# Default chances for Medium difficulty
CHANCES=5  

function set_difficulty_level {
    local level
    while true; do
        read -p "Enter your choice: " level
        case "${level}" in
            1)
                CHANCES=10
                echo "Great! You have selected the Easy difficulty level."
                echo "You have ${CHANCES} chances to guess the correct number."
                echo "Let's start the game!"
                break
                ;;
            2)
                CHANCES=5
                echo "Great! You have selected the Medium difficulty level."
                echo "You have ${CHANCES} chances to guess the correct number."
                echo "Let's start the game!"
                break
                ;;
            3)
                CHANCES=3
                echo "Great! You have selected the Hard difficulty level."
                echo "You have ${CHANCES} chances to guess the correct number."
                echo "Let's start the game!"
                break
                ;;
            *)
                echo "Invalid choice. Please select a valid difficulty level."
                ;;
        esac
    done
}

function main {
    set_difficulty_level

    while true; do
        local random_number=$(( RANDOM % 100 + 1 ))
        local attempts=0
        local guess

        while [ ${attempts} -lt ${CHANCES} ]; do
            read -p "Enter your guess: " guess || break

            if ! [[ "${guess}" =~ ^[0-9]+$ ]]; then
                >&2 echo "Invalid input. Please enter a valid number."
                continue
            fi
            if [[ "${guess}" -lt 1  || "${guess}" -gt 100 ]]; then
                >&2 echo "Please enter a number between 1 and 100."
                continue
            fi

            attempts=$(( attempts + 1 ))

            if [ "${guess}" -lt "${random_number}" ]; then
                echo "Incorrect! The number is greater than ${guess}."
            elif [ "${guess}" -gt "${random_number}" ]; then
                echo "Incorrect! The number is less than ${guess}."
            else
                echo "Congratulations! You guessed the correct number in ${attempts} attempts."
                break
            fi

            if [ ${attempts} -eq ${CHANCES} ]; then
                echo "Sorry, you've used all your chances. The correct number was: ${random_number}"
            fi
        done

        local play_again
        read -n1 -p "Do you want to play again? (y/n): " play_again
        echo ""
        if [[ "${play_again}" != "y" && "${play_again}" != "Y" ]]; then
            echo "Thank you for playing! Goodbye!"
            break
        fi
    done
}

main
