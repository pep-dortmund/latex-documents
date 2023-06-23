TARGETS=$(basename $(wildcard *.tex))

all: $(addprefix build/, $(addsuffix .pdf, $(TARGETS)))

build/%.pdf: FORCE | build 
	TEXINPUTS=../logos:../common:..: latexmk -r ../common/latexmkrc $*.tex

build:
	mkdir -p build

clean:
	rm -r build

FORCE:

.PHONY: all clean FORCE
