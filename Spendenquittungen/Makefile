TEXOPTS= --lualatex \
	 --output-directory=build \
	 --interaction=nonstopmode \
	 --halt-on-error

FOLDER = Spenden
FILES = $(wildcard $(FOLDER)/*)
TARGETS= $(shell basename -s .tex -a $(FILES))

all: $(addprefix build/, $(addsuffix .pdf, $(TARGETS)))

build/%.pdf: $(FOLDER)/%.tex FORCE | build
	TEXINPUTS=../logos:..: latexmk $(TEXOPTS) $<

FORCE:

build:
	mkdir -p build

clean:
	rm -r build

.PHONY: all clean FORCE
