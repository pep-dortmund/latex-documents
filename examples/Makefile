TEXOPTS= --lualatex \
	 --output-directory=build \
	 --interaction=nonstopmode \
	 --halt-on-error

TARGETS=Spende

all: $(addprefix build/, $(addsuffix .pdf, $(TARGETS)))

build/%.pdf: %.tex FORCE | build
	TEXINPUTS=../logos:..: latexmk $(TEXOPTS) $<

FORCE:

build:
	mkdir -p build

clean:
	rm -r build

.PHONY: all clean FORCE
