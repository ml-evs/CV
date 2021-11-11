all: Matthew_Evans_CV.tex
	xelatex Matthew_Evans_CV.tex
	biber Matthew_Evans_CV
	xelatex Matthew_Evans_CV.tex
	biber Matthew_Evans_CV
	xelatex Matthew_Evans_CV.tex