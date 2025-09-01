resume.pdf: resume.tex
	latexmk --pdf resume.tex
clean:
	latexmk -C
