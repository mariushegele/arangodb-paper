all: open

open: main.pdf
	open $<

main.pdf: main.bbl main.gls
	xelatex main.tex

main.bbl: main.bcf
	biber main

main.bcf: main.glo

main.gls: main.glo
	makeindex -s nomencl.ist -t main.glg -o $@ $<

main.glo: main.tex content.tex
	xelatex main.tex
