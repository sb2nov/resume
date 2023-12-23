file=MarcellNagy_Resume

all:
	pdflatex $(file).tex
	pdflatex $(file).tex
	pdflatex $(file).tex

clean:
	rm *.out *.aux *.log

