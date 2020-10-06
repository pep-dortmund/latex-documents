TEXOPTS= --lualatex \
	 --output-directory=build \
	 --interaction=nonstopmode \
	 --halt-on-error

all: build/template.pdf

build/template.pdf: FORCE | build
	TEXINPUTS=../logos:..: latexmk $(TEXOPTS) template.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build

.PHONY: all clean FORCE
