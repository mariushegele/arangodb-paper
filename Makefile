all: open

open: main.pdf
	open $<

main.pdf: main.bbl
	pdflatex main.tex

main.bbl: main.bcf
	biber main

main.bcf:
	pdflatex main.tex
