TEXFILE = report
PRESENTATION = presentation
PDFLATEX = pdflatex
BIBTEX = bibtex

all: $(TEXFILE).pdf $(PRESENTATION).pdf

$(TEXFILE).pdf: $(TEXFILE).tex $(TEXFILE).bib
	$(PDFLATEX) $(TEXFILE)
	$(BIBTEX) $(TEXFILE)
	$(PDFLATEX) $(TEXFILE)
	$(PDFLATEX) $(TEXFILE)

$(PRESENTATION).pdf: $(PRESENTATION).tex $(PRESENTATION).bib
	$(PDFLATEX) $(PRESENTATION)
	$(BIBTEX) $(PRESENTATION)
	$(PDFLATEX) $(PRESENTATION)
	$(PDFLATEX) $(PRESENTATION)

clean:
	rm -f $(TEXFILE).aux $(TEXFILE).bbl $(TEXFILE).blg $(TEXFILE).log $(TEXFILE).out $(TEXFILE).toc $(PRESENTATION).aux $(PRESENTATION).log $(PRESENTATION).nav $(PRESENTATION).out $(PRESENTATION).snm $(PRESENTATION).toc $(PRESENTATION).bbl $(PRESENTATION).blg

distclean: clean
	rm -f $(TEXFILE).pdf
