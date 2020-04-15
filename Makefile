all: open

open: main.pdf
	open $<

main.pdf: main.bbl
	pdflatex main.tex

main.bbl: main.bcf
	biber main

main.bcf: main.tex content.tex
	pdflatex main.tex
