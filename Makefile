STY=*.sty
CLS=*.cls
BiocPkgToolsManuscript.pdf: BiocPkgToolsManuscript.tex $(STY) $(CLS) references.bib
	pdflatex BiocPkgToolsManuscript.tex && bibtex BiocPkgToolsManuscript && pdflatex BiocPkgToolsManuscript.tex && pdflatex BiocPkgToolsManuscript.tex 
