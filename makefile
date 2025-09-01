make: resume.tex
	latexmk --pdf -pvc resume.tex
clean:
	resume.aux resume.fdb_latexmk  resume.fls  resume.log  resume.out  resume.pdf
