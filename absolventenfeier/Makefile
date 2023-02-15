TEXOPTS= --lualatex \
	 --output-directory=build \
	 --interaction=nonstopmode \
	 --halt-on-error

TARGETS=reserviert \
	laecheln_und_winken\
	moderationskarten \
	vegan \
	vegetarisch \
	glutenfrei \
	karbach_preis \
	beste_fuenf_prozent \
	deutschland_stipendien \
	einladung

all: $(addprefix build/, $(addsuffix .pdf, $(TARGETS)))

build/%.pdf: %.tex | build
	TEXINPUTS=../logos:..: latexmk $(TEXOPTS) $^


build:
	mkdir -p build

clean:
	rm -r build

.PHONY: all clean
