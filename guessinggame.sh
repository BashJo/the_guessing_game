#!/usr/bin/env bash
#file: guessinggame.sh

function guess_files_num {
	while true
	do
		echo "Type your guess down:"
		read guess
		if [[ $guess -gt $(ls -l | egrep "^-" | wc -l) ]]
		then 
			echo "Guess smaller!"
		elif [[ $guess -lt $(ls -l | egrep "^-" | wc -l) ]]
		then
			echo "Guess bigger!"
		else 
			echo "There is exactly $guess files in this directory!"
			echo "Good job! Congratulations!"
			break
		fi
	done
}

echo "============================================"
echo "The game is launched"
echo "============================================"
echo "Guess how many files (only files) are in the current directory!"
guess_files_num
echo "============================================"
echo "Game Over!"
echo "============================================"
