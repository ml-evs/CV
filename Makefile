all: short long

long: Matthew_Evans_CV.tex
	xelatex Matthew_Evans_CV.tex
	biber Matthew_Evans_CV
	xelatex Matthew_Evans_CV.tex
	biber Matthew_Evans_CV
	xelatex Matthew_Evans_CV.tex

short: Matthew_Evans_CV_short.tex
	xelatex Matthew_Evans_CV_short.tex
	biber Matthew_Evans_CV_short
	xelatex Matthew_Evans_CV_short.tex
	biber Matthew_Evans_CV_short
	xelatex Matthew_Evans_CV_short.tex

docker: Matthew_Evans_CV.tex
	docker run --rm --volume `pwd`:/data ghcr.io/ml-evs/cv:latest
