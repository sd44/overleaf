# Makefile for Dingjiw

# Compiling method: latexmk/xelatex/pdflatex
METHOD = latexmk
# Basename of thesis
DINGJIAMAIN = main
# Basename of shuji
SHUJIMAIN = shuji
TEMPFILE := $(shell find . -type f -name "*.aux" -o -type f -name "*.log") 
TEMPDIR := $(shell find . -maxdepth 4 -type d -name "auto") 
DINGJIACONTENTS=$(DINGJIAMAIN).tex data/*.tex $(FIGURES)
DINGJIACLEAN= $(TEMPFILE) $(TEMPDIR) svg-* tmpoutput/
# NOTE: update this to reflect your local file types.
FIGURES=$(wildcard figures/*.eps figures/*.pdf figures/*.jpg figures/*.png)

# make deletion work on Windows
RM = rm -f
OPEN = okular

.PHONY: all doc clean distclean 

all: distclean doc 

doc: $(DINGJIAMAIN).pdf

$(DINGJIAMAIN).pdf: $(DINGJIAMAIN).tex
	$(METHOD)  $(DINGJIAMAIN)

clean:
	latexmk -C 
	-@$(RM) *~
	-@$(RM) -rf $(DINGJIACLEAN)

distclean: clean
	-@$(RM) $(DINGJIAMAIN).pdf

