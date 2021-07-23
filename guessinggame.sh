#!/usr/bin/env bash
# File: guessinggame.sh

function count_files {
    files_in_dir=$(ls -1 | wc -l)
}

echo "How many files are there in the current directory? Type the number below and press enter:"

while read user_input; do
    count_files

    if [[ $user_input -ne $files_in_dir ]]; then
        if [[ $user_input -gt $files_in_dir ]]; then
            echo "try a lower number!"
        else
            echo "try a higher number!"
        fi
    else
        echo "You guessed it! There are $files_in_dir files in the current directory."
        exit 0
    fi
done
