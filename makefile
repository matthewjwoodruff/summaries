all: README.md summaries/smo.md summaries/jmd.md summaries/barthelemy_haftka_1993_approximation_concepts.md summaries/bond_2008_generating_objectives.md

README.md: src/README.md src/license.html
	pandoc -i src/README.md -o README.html --bibliography src/bibliography.bib
	pandoc -i README.html src/license.html -o README.md -t markdown_github

summaries/smo.md: src/smo.md src/license.html
	pandoc -i src/smo.md -o smo.html --bibliography src/bibliography.bib
	pandoc -i smo.html src/license.html -o summaries/smo.md -t markdown_github
	
summaries/jmd.md: src/jmd.md src/license.html
	pandoc -i src/jmd.md -o jmd.html --bibliography src/bibliography.bib
	pandoc -i jmd.html src/license.html -o summaries/jmd.md -t markdown_github

summaries/barthelemy_haftka_1993_approximation_concepts.md: src/license.html src/bibliography.bib src/barthelemy_haftka_1993_approximation_concepts.md
	pandoc -i src/barthelemy_haftka_1993_approximation_concepts.md -o barthelemy_haftka_1993_approximation_concepts.html --bibliography src/bibliography.bib
	pandoc -i barthelemy_haftka_1993_approximation_concepts.html src/license.html -o summaries/barthelemy_haftka_1993_approximation_concepts.md -t markdown_github

summaries/bond_2008_generating_objectives.md: src/license.html src/bibliography.bib src/bond_2008_generating_objectives.md
	pandoc -i src/bond_2008_generating_objectives.md -o bond_2008_generating_objectives.html --bibliography src/bibliography.bib
	pandoc -i bond_2008_generating_objectives.html src/license.html -o summaries/bond_2008_generating_objectives.md -t markdown_github

clean:
	rm -f README.md README.html
	rm -f *html
	rm -f summaries/*md
