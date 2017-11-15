TEXCC=latexmk
TEXOPTS=-output-directory=build -lualatex

all: build/purdue_anleitung.pdf \
	build/purdue_pep_vertrag.pdf \
	build/purdue_visiting_scholar_information_form.pdf

build/purdue_anleitung.pdf: purdue_anleitung.tex | build
	${TEXCC} ${TEXOPTS} $<

build/purdue_pep_vertrag.pdf: purdue_pep_vertrag.tex | build
	${TEXCC} ${TEXOPTS} $<

build/purdue_visiting_scholar_information_form.pdf: \
	purdue_visiting_scholar_information_form.tex | build
	${TEXCC} ${TEXOPTS} $<


.PHONY: build clean anleitung vertrag scholar_info_form

anleitung: build/purdue_anleitung.pdf

vertrag: build/purdue_pep_vertrag.pdf

scholar_info_form: build/purdue_visiting_scholar_information_form.pdf

build:
	mkdir -p build

clean:
	rm -rf build