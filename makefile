all: runpandoc

runpandoc:
	pandoc markdown.md -o result_article.pdf \
	--pdf-engine=xelatex \
	-d default.yaml \
	-F pandoc-crossref \
	--citeproc \
	--variable mainfont="Times New Roman" \
	--variable geometry="margin=2cm" \
	--metadata-file pdf.yaml