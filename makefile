all:
	touch README.md
	echo "" > README.md
	echo "# GUESSING GAME" >> README.md
	date >> README.md
	cat "guessinggame.sh" | wc -l | xargs >> README.md
