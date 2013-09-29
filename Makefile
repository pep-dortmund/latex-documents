FILE=peptemplate

all: ${FILE}

${FILE}:
	make tex
	make tex
	biber ${FILE}
	make tex
	make open

tex: ${FILE}.tex
	lualatex ${FILE}

open:
	open ${FILE}.pdf

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *.log
	rm -f *.out
	rm -f *.pdf
	rm -f *.run.xml
	rm -f *.toc
	rm -f ${FILE}.pdf
