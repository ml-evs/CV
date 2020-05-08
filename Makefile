all: Matthew_Evans_CV.tex
		bash -c 'ln -s ~/src/moderncv/*.sty .'
		bash -c 'ln -s ~/src/moderncv/moderncv.cls .'
		xelatex Matthew_Evans_CV.tex
		biber Matthew_Evans_CV
		xelatex Matthew_Evans_CV.tex
		biber Matthew_Evans_CV
		xelatex Matthew_Evans_CV.tex
		bash -c 'rm -f moderncv*'
		bash -c 'rm -f tweaklist.sty'
		bash -c 'rm -f *.bbl *.aux *.bcf *.blg *.fdb_latexmk *.log *.fls *.xml *.out'

.PHONY: clean

clean:
		bash -c 'rm -f moderncv*'
		bash -c 'rm -f tweaklist.sty'
		bash -c 'rm -f *.bbl *.aux *.bcf *.blg *.fdb_latexmk *.log *.fls *.xml *.out'
