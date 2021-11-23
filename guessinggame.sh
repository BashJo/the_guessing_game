#!/usr/bin/env bash
#file: guessinggame.sh

function guess_files_num {
	while true
	do
		echo "Guess how many files (without directories) are in the current directory!"
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
echo " Guessing Game is launched"
echo "============================================"
guess_files_num
echo "============================================"
echo "Game Over!"
echo "============================================"
