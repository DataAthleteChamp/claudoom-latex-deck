MAIN = main
ENGINE = latexmk -xelatex -bibtex -interaction=nonstopmode -halt-on-error

.PHONY: all watch clean distclean

all:
	$(ENGINE) $(MAIN).tex

watch:
	$(ENGINE) -pvc $(MAIN).tex

clean:
	latexmk -c
	rm -f *.bbl *.run.xml *.nav *.snm *.vrb

distclean:
	latexmk -C
	rm -f $(MAIN).pdf
