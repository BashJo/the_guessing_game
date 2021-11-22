README.md: guessinggame.sh
	echo "# The Guessing Game" > README.md
	date >> README.md
	echo "" >> README.md
	echo "**The number of lines in the code is:**" >> README.md 
	wc guessinggame.sh -l | egrep -o "^[0123456789]." >> README.md
