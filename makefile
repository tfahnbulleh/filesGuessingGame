all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course assignment" > README.md
	echo "\n**Description**: Program *guessinggame.sh* Continuously ask the user for the number of files in the PWD until they get it correct." >> README.md
	echo -n "\n**Date**: " >> README.md
	date >> README.md
	echo -n "\n**Total Lines in filesGuessingGame.sh:** " >> README.md
	grep -c '' filesGuessingGame.sh >> README.md

clean:
	rm README.md
