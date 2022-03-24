pdf:
	latexmk \
		-synctex=1 \
		-interaction=nonstopmode \
		-file-line-error \
		-pdf \
		-shell-escape \
		main.tex

.clean-main:
	latexmk -C

.clean-aux:
	find . -name "*.aux" -delete

.clean-minted:
	rm -r _minted-main

clean: .clean-main .clean-aux .clean-minted
