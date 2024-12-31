TEXFILE = report
BIBFILE = $(TEXFILE).bib
PDFLATEX = pdflatex
BIBTEX = bibtex

all: $(TEXFILE).pdf

$(TEXFILE).pdf: $(TEXFILE).tex $(BIBFILE)
	$(PDFLATEX) $(TEXFILE)
	$(BIBTEX) $(TEXFILE)
	$(PDFLATEX) $(TEXFILE)
	$(PDFLATEX) $(TEXFILE)

clean:
	rm -f $(TEXFILE).aux $(TEXFILE).bbl $(TEXFILE).blg $(TEXFILE).log $(TEXFILE).out $(TEXFILE).toc

distclean: clean
	rm -f $(TEXFILE).pdf
