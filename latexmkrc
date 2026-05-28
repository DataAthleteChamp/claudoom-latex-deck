$pdf_mode = 5;          # xelatex
$pdflatex = 'xelatex -interaction=nonstopmode -synctex=1 %O %S';
$bibtex_use = 2;        # always run biber
$clean_ext = 'bbl run.xml synctex.gz nav snm vrb fdb_latexmk fls';
