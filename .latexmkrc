# tells latexmk to use xelatex instead of pdflatex
# so `latexmk main.tex` just works, no flags needed

$pdf_mode = 5;              # 5 = xelatex
$xelatex = 'xelatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';

# clean up the extra junk files xelatex leaves behind
$clean_ext = 'synctex.gz fdb_latexmk fls xdv';
