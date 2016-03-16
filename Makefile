RM = rm -rf

all: clean
	pdflatex monografia
	makeindex monografia.nlo -s nomencl.ist -o monografia.nls
	pdflatex monografia
	bibtex monografia
	pdflatex monografia
	pdflatex monografia

simples:
	pdflatex monografia

referencias:
	pdflatex monografia
	bibtex monografia
	pdflatex monografia
	pdflatex monografia

siglas:
	pdflatex monografia
	makeindex monografia.nlo -s nomencl.ist -o monografia.nls
	pdflatex monografia
	pdflatex monografia

clean:
	$(RM) *~
	$(RM) *.aux
	$(RM) *.glo
	$(RM) *.idx
	$(RM) *.log
	$(RM) *.toc
	$(RM) *.ist
	$(RM) *.acn
	$(RM) *.acr
	$(RM) *.alg
	$(RM) *.bbl
	$(RM) *.blg
	$(RM) *.dvi
	$(RM) *.glg
	$(RM) *.gls
	$(RM) *.ilg
	$(RM) *.ind
	$(RM) *.lof
	$(RM) *.lot
	$(RM) *.maf
	$(RM) *.mtc
	$(RM) *.mtc1
	$(RM) *.out
	$(RM) *.brf
	$(RM) *.glsdefs
	$(RM) *.loa
	$(RM) *.lol
	$(RM) *.loq
	$(RM) *.los
	$(RM) *.mw
	$(RM) *.nlo
	$(RM) *.nls
	$(RM) *.DS_Store
