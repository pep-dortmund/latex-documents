TARGETS=reserviert \
	laecheln_und_winken\
	moderationskarten \
	vegan \
	vegetarisch \
	glutenfrei \
	karbach_preis \
	beste_fuenf_prozent \
	deutschland_stipendien \
	einladung \
	garderobe

all: $(addprefix build/, $(addsuffix .pdf, $(TARGETS)))

build/%.pdf: FORCE | build 
	TEXINPUTS=../logos:../common:..: latexmk -r ../common/latexmkrc $*.tex

build:
	mkdir -p build

clean:
	rm -r build

FORCE:

.PHONY: all clean FORCE
