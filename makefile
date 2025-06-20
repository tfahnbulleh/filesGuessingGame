all: README.md

README.md: myGussingGame.sh
	echo "## The Unix Workbench course assignment" > README.md
	echo "\n**Description**: Program *myGussingGame.sh* Continuously ask the user for the number of files in the PWD until they get it correct." >> README.md
	echo -n "\n**Date**: " >> README.md
	date >> README.md
	echo -n "\n**Total Lines in myGussingGame.sh:** " >> README.md
	grep -c '' myGussingGame.sh >> README.md

clean:
	rm README.md
