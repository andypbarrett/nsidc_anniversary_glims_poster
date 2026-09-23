.PHONY: main clean FORCE

main: poster.pdf

poster.pdf: FORCE
	latexmk -f -pdflatex='texfot lualatex -interaction nonstopmode' -pdf poster.tex

clean:
	latexmk -pdf -C
