all: README.md summaries/smo.md summaries/jmd.md summaries/barthelemy_haftka_1993_approximation_concepts.md summaries/bond_2008_generating_objectives.md summaries/moore_2012_valuebased.md summaries/ejor.md summaries/ormerod_2014_rationalism.md summaries/ec.md summaries/saltelli_2014_modelswrong.md summaries/azarm_2001_metrics.md

README.md: src/README.md src/license.html src/bibliography.bib
	pandoc -i src/README.md -o README.html --bibliography src/bibliography.bib
	pandoc -i README.html src/license.html -o README.md -t markdown_github

summaries/smo.md: src/smo.md src/license.html src/bibliography.bib
	pandoc -i src/smo.md -o smo.html --bibliography src/bibliography.bib
	pandoc -i smo.html src/license.html -o summaries/smo.md -t markdown_github
	
summaries/jmd.md: src/jmd.md src/license.html src/bibliography.bib
	pandoc -i src/jmd.md -o jmd.html --bibliography src/bibliography.bib
	pandoc -i jmd.html src/license.html -o summaries/jmd.md -t markdown_github

summaries/ejor.md: src/ejor.md src/license.html src/bibliography.bib
	pandoc -i src/ejor.md -o ejor.html --bibliography src/bibliography.bib
	pandoc -i ejor.html src/license.html -o summaries/ejor.md -t markdown_github

summaries/ec.md: src/ec.md src/license.html src/bibliography.bib
	pandoc -i src/ec.md -o ec.html --bibliography src/bibliography.bib
	pandoc -i ec.html src/license.html -o summaries/ec.md -t markdown_github

summaries/barthelemy_haftka_1993_approximation_concepts.md: src/license.html src/bibliography.bib src/barthelemy_haftka_1993_approximation_concepts.md
	pandoc -i src/barthelemy_haftka_1993_approximation_concepts.md -o barthelemy_haftka_1993_approximation_concepts.html --bibliography src/bibliography.bib
	pandoc -i barthelemy_haftka_1993_approximation_concepts.html src/license.html -o summaries/barthelemy_haftka_1993_approximation_concepts.md -t markdown_github

summaries/bond_2008_generating_objectives.md: src/license.html src/bibliography.bib src/bond_2008_generating_objectives.md
	pandoc -i src/bond_2008_generating_objectives.md -o bond_2008_generating_objectives.html --bibliography src/bibliography.bib
	pandoc -i bond_2008_generating_objectives.html src/license.html -o summaries/bond_2008_generating_objectives.md -t markdown_github

summaries/moore_2012_valuebased.md: src/moore_2012_valuebased.md src/license.html
	pandoc -i src/moore_2012_valuebased.md -o moore_2012_valuebased.html --bibliography src/bibliography.bib
	pandoc -i moore_2012_valuebased.html src/license.html -o summaries/moore_2012_valuebased.md -t markdown_github

summaries/ormerod_2014_rationalism.md: src/ormerod_2014_rationalism.md src/license.html
	pandoc -i src/ormerod_2014_rationalism.md -o ormerod_2014_rationalism.html --bibliography src/bibliography.bib
	pandoc -i ormerod_2014_rationalism.html src/license.html -o summaries/ormerod_2014_rationalism.md -t markdown_github

summaries/saltelli_2014_modelswrong.md: src/saltelli_2014_modelswrong.md src/license.html
	pandoc -i src/saltelli_2014_modelswrong.md -o saltelli_2014_modelswrong.html --bibliography src/bibliography.bib
	pandoc -i saltelli_2014_modelswrong.html src/license.html -o summaries/saltelli_2014_modelswrong.md -t markdown_github

summaries/azarm_2001_metrics.md: src/azarm_2001_metrics.md src/license.html
	pandoc -i src/azarm_2001_metrics.md -o azarm_2001_metrics.html --bibliography src/bibliography.bib
	pandoc -i azarm_2001_metrics.html src/license.html -o summaries/azarm_2001_metrics.md -t markdown_github

clean:
	rm -f README.md README.html
	rm -f *html
	rm -f summaries/*md
