resume.pdf: resume.tex resume.cls
	pdflatex -interaction=nonstopmode -halt-on-error resume.tex
clean:
	rm resume.aux resume.log resume.out resume.pdf

# Explicit variants; legacy default/release build above remains unchanged.
.PHONY: public private
public:
	mkdir -p build/public
	pdflatex -interaction=nonstopmode -halt-on-error -no-shell-escape -jobname=resume -output-directory=build/public resumes/public.tex

private:
	@test -f private/contacts.tex || { echo "Missing ignored private/contacts.tex; see career/variants.md"; exit 1; }
	@umask 077; mkdir -p build/private; pdflatex -interaction=nonstopmode -halt-on-error -no-shell-escape -jobname=resume -output-directory=build/private resumes/private.tex > build/private/build-output.log 2>&1 || { echo "Private build failed; inspect ignored build/private/build-output.log locally"; exit 1; }
	@echo "Private PDF: build/private/resume.pdf (local only)"
