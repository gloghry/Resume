resume.pdf: resume.tex resume.cls
	pdflatex -interaction=nonstopmode -halt-on-error resume.tex
clean:
	rm resume.aux resume.log resume.out resume.pdf
