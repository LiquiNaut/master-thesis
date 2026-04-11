GREEN := \033[0;32m
RED := \033[0;31m
NC := \033[0m

FILE = example_paper

LATEXMK_OPTIONS = -pdf -synctex=1 -interaction=nonstopmode
LINE_WIDTH = error_line=240 half_error_line=160 max_print_line=240

all: pdf

pdf:
	$(LINE_WIDTH) latexmk $(LATEXMK_OPTIONS) $(FILE).tex \
	&& printf "\n$(GREEN)Successful compilation!$(NC)\n" \
	|| (printf "\n$(RED)Error: Compilation failed! Skontroluj terminal alebo example_paper.log pre detaily.$(NC)\n" && exit 1)

clean:
	@latexmk -C $(FILE).tex && \
	rm -rf *.acn *.acr *.alg *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.glg *.glo *.gls *.ist *.loa *.lof *.log *.lol *.lot *.out *.pri *.run.xml *.synctex.gz *.toc *.aux.bbl *.aux.blg .build/ \
	&& printf "\n$(GREEN)Successfully cleaned temporary files!$(NC)\n" \
	|| (printf "\n$(RED)Error: Failed to clean files.$(NC)\n" && exit 1)

refresh: clean pdf

.PHONY: all pdf clean refresh
