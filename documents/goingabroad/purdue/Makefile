TEXCC=latexmk
TEXOPTS=-output-directory=build -lualatex

all: build/purdue_anleitung.pdf \
	build/purdue_pep_vertrag.pdf \
	build/purdue_visiting_scholar_information_form.pdf \
  build/purdue_pep_art_der_foerderung.pdf \
	build/purdue_scholarship_certificate.pdf

build/purdue_anleitung.pdf: purdue_anleitung.tex | build
	${TEXCC} ${TEXOPTS} $<

build/purdue_pep_vertrag.pdf: purdue_pep_vertrag.tex | build
	${TEXCC} ${TEXOPTS} $<

build/purdue_visiting_scholar_information_form.pdf: \
	purdue_visiting_scholar_information_form.tex | build
	${TEXCC} ${TEXOPTS} $<

build/purdue_pep_art_der_foerderung.pdf: \
	purdue_pep_art_der_foerderung.tex | build
	${TEXCC} ${TEXOPTS} $<

build/purdue_scholarship_certificate.pdf: \
	purdue_scholarship_certificate.tex | build
	TEXINPUTS=../../../logos:..: ${TEXCC}  ${TEXOPTS} $<

.PHONY: build clean anleitung vertrag scholar_info_form art_der_foerderung certificate

anleitung: build/purdue_anleitung.pdf

vertrag: build/purdue_pep_vertrag.pdf

scholar_info_form: build/purdue_visiting_scholar_information_form.pdf

art_der_foerderung: build/purdue_pep_art_der_foerderung.pdf

certificate: build/purdue_scholarship_certificate.pdf

build:
	mkdir -p build

clean:
	rm -rf build
