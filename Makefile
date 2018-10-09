STY=*.sty
CLS=*.cls
BiocPkgToolsManuscript.pdf: BiocPkgToolsManuscript.tex $(STY) $(CLS) references.bib
	pdflatex BiocPkgToolsManuscript && bibtex BiocPkgToolsManuscript && pdflatex BiocPkgToolsManuscript && pdflatex BiocPkgToolsManuscript 

BiocPkgToolsManuscript.tex: BiocPkgToolsManuscript.Rnw
	Rscript -e 'library(knitr); knit("BiocPkgToolsManuscript.Rnw")'
