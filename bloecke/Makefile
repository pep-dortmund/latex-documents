TARGETS=pep-block_dotted

all: $(addprefix build/, $(addsuffix .pdf, $(TARGETS)))

build/%.pdf: %.tex | build
	TEXINPUTS=../logos:../common:..: latexmk -r ../common/latexmkrc $<

build:
	mkdir -p build

clean:
	rm -r build

.PHONY: all clean
