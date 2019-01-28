all: Matthew_Evans_CV.tex
		bash -c 'ln -s ~/src/moderncv/*.sty .'
		bash -c 'ln -s ~/src/moderncv/moderncv.cls .'
		xelatex Matthew_Evans_CV.tex
		biber Matthew_Evans_CV
		xelatex Matthew_Evans_CV.tex
		biber Matthew_Evans_CV
		xelatex Matthew_Evans_CV.tex
		bash -c 'rm moderncv*'
		bash -c 'rm tweaklist.sty'

.PHONY: clean

clean:
		bash -c 'rm moderncv*'
		bash -c 'rm tweaklist.sty'
