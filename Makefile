# Makefile for Dingjiw

# Compiling method: latexmk/xelatex/pdflatex
# JOBNAME="个人社会学视角下的世界与中国—一个平民的独白（未完成）"
JOBNAME="main"
METHOD = latexmk -jobname=$(JOBNAME)
# Basename of thesis
DINGJIAMAIN = main
# Basename of shuji
SHUJIMAIN = shuji
TEMPFILE := $(shell find . -type f -name "*.aux" -o -type f -name "*.log" -o -name "_region*")
TEMPDIR := $(shell find . -maxdepth 4 -type d -name "auto")
DINGJIACONTENTS=$(DINGJIAMAIN).tex data/*.tex $(FIGURES)
DINGJIACLEAN= $(TEMPFILE) $(TEMPDIR) svg-* tmpoutput/
# NOTE: update this to reflect your local file types.
FIGURES=$(wildcard figures/*.eps figures/*.pdf figures/*.jpg figures/*.png)

# make deletion work on Windows
RM = rm -f
OPEN = okular

.PHONY: all doc clean distclean

all: doc

doc: 	$(DINGJIAMAIN).tex
	$(METHOD)  $(DINGJIAMAIN)

clean:
	 $(METHOD) -c $(JOBNAME).aux
	-@$(RM) *~
	-@$(RM) -rf $(DINGJIACLEAN)

distclean: clean
	-@$(RM) $(JOBNAME).pdf

