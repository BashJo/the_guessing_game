README.md: guessinggame.sh
	echo "#The Guessing Game" > README.md
	date >> README.md
	echo "**The number of lines in the code is:**"
	wc guessinggame.sh -l >> README.md
