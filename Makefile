# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build
PDF_FILENAME  = ZT-100_User_Manual.pdf

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile html-with-pdf

html-with-pdf: Makefile
	@$(SPHINXBUILD) -M latexpdf "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@mkdir -p "$(BUILDDIR)/html/_static"
	@pdf_file=$$(ls "$(BUILDDIR)/latex/"*.pdf 2>/dev/null | head -n 1); \
	if [ -z "$$pdf_file" ]; then \
		echo "No PDF produced in $(BUILDDIR)/latex"; \
		exit 1; \
	fi; \
	cp "$$pdf_file" "$(BUILDDIR)/html/_static/$(PDF_FILENAME)"; \
	echo "Copied $$pdf_file to $(BUILDDIR)/html/_static/$(PDF_FILENAME)"

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
