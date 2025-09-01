resume.pdf: resume.tex resume.cls
	pdflatex resume.tex
clean:
	rm resume.aux resume.log resume.out resume.pdf
