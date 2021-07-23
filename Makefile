all: README.md

README.md: guessinggame.sh
	echo '## guessinggame.sh' > README.md
	echo 'This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated.' >> README.md
	echo '\nMake was run in:' >> README.md
	echo '```' >> README.md
	date >> README.md
	echo '```' >> README.md
	echo "The script guessinggame.sh has $(shell grep -c '' guessinggame.sh) lines." >> README.md

clean: README.md
	rm README.md