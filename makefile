all: create_readme edit_readme

create_readme:
	touch README.md

edit_readme:
	echo "# Guessinggame Project" > README.md
	echo "- Date: " $$(date) >> README.md
	echo "- Number of lines of code contained in guessinggame.sh:" $$(wc -l guessinggame.sh) >> README.md

clean:
	rm README.md
