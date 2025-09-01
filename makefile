resume.pdf: resume.tex
	pdflatex resume.tex
clean:
	rm resume.aux resume.log resume.out resume.pdf
