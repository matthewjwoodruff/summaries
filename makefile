all: README.md summaries/smo.md summaries/jmd.md

README.html: src/README.md
	 pandoc -i src/README.md -o README.html --bibliography src/bibliography.bib

jmd.html: src/jmd.md
	 pandoc -i src/jmd.md -o jmd.html --bibliography src/bibliography.bib

smo.html: src/smo.md
	 pandoc -i src/smo.md -o smo.html --bibliography src/bibliography.bib

README.md: README.html src/license.html
	pandoc -i README.html src/license.html -o README.md -t markdown_github

summaries/smo.md: smo.html src/license.html
	pandoc -i smo.html src/license.html -o summaries/smo.md -t markdown_github
	
summaries/jmd.md: jmd.html src/license.html
	pandoc -i jmd.html src/license.html -o summaries/jmd.md -t markdown_github
	

clean:
	rm -f README.md README.html
	rm -f *html
	rm -f summaries/*md
