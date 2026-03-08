FILE = example_paper

LATEXMK_OPTIONS = -pdf -synctex=1 -interaction=nonstopmode
LINE_WIDTH = error_line=240 half_error_line=160 max_print_line=240

all: pdf

pdf:
	$(LINE_WIDTH) latexmk $(LATEXMK_OPTIONS) $(FILE).tex
	# No move needed as we build in root

clean:
	latexmk -C $(FILE).tex
	rm -rf *.acn *.acr *.alg *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.glg *.glo *.gls *.ist *.loa *.lof *.log *.lol *.lot *.out *.pri *.run.xml *.synctex.gz *.toc *.aux.bbl *.aux.blg .build/

refresh: clean pdf

.PHONY: all pdf clean refresh
