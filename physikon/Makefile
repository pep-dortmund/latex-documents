TEXOPTS= --lualatex \
	 --output-directory=build \
	 --interaction=nonstopmode \
	 --halt-on-error

TARGETS=Bestaetigung_Unternehmen \
	Angebot_Unternehmen

all: $(addprefix build/, $(addsuffix .pdf, $(TARGETS)))

build/%.pdf: %.tex | build
	TEXINPUTS=../logos:..: latexmk $(TEXOPTS) $<

build:
	mkdir -p build

clean:
	rm -r build

.PHONY: all clean
