all:
	latexmk -pdf phdFinal.tex

clean:
	latexmk -C && rm -f phdFinal.bbl phdFinal.brf
