TEXOPTS=--output-directory=build --interaction=nonstopmode --halt-on-error

TARGETS=soak brief mitgliedsantrag stip_antrag stip_aushang inistip_vertrag inistip_info

all: $(addsuffix .pdf, $TARGETS)

soak.pdf: soak_anmeldung.tex | build
	lualatex $(TEXOPTS) $<
	lualatex $(TEXOPTS) $<


build:
	mkdir -p build

clean:
	rm -r build

.PHONY: all clean