##
## @file    Makefile
## @brief   Simple Makefile for LaTeX projects
## @author  Michael Hucka <mhucka@caltech.edu>
##
## This file is part of Vireo.  Please visit the following page for more
## information and the latest version:  https://github.com/mhucka/vireo
## ----------------------------------------------------------------------------

# Change the following to the file name of the main LaTeX file.

MAINFILE = test.tex

# .............................................................................
# The rest below is generic and probably does not need to be changed.

$(basename $(MAINFILE)).pdf: *.tex $(wildcard *.bib) Makefile
	-pdflatex $(MAINFILE)
	-bibtex $(MAINFILE)
	-pdflatex $(MAINFILE)
	-pdflatex $(MAINFILE)

clean:
	-rm -f *.aux *.bbl *.blg *.log *.out *.loc *.toc *.pdf
