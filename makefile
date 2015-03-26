main.pdf : main.tex main.bib sysuthesis.bst
	xelatex main
	bibtex main
	xelatex main
	xelatex main

clean:
	rm main.pdf	
