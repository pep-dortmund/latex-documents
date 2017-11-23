TEXOPTS= --lualatex \
	 --output-directory=build \
	 --interaction=nonstopmode \
	 --halt-on-error

TARGETS=soak_anmeldung \
	brief \
	mitgliedsantrag \
	stipendium_antrag \
	stipendium_aushang \
	stipendium_initiativ \
	stipendium_initiativ_vertrag \
	goingabroad/purdue/purdue_brief_absage \
	goingabroad/purdue/purdue_brief_zusage \
	goingabroad/purdue/purdue_anleitung \
	satzung/gebuehrenordnung \
	satzung/satzung

all: $(addprefix build/, $(addsuffix .pdf, $(TARGETS)))

build/%.pdf: %.tex | build
	TEXINPUTS=../logos:..: latexmk $(TEXOPTS) $^


build:
	mkdir -p build

clean:
	rm -r build

.PHONY: all clean
