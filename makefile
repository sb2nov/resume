file=MarcellNagy_Resume

all:
	pdflatex $(file).tex
	pdflatex $(file).tex
	pdflatex $(file).tex

clean:
	rm -f *.out *.aux *.log *.synctex.gz

