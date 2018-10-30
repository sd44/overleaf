(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ctexbook" "UTF8" "fontset=none" "a4paper" "twoside" "openany" "zihao=-4" "scheme=chinese" "no-math")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("nag" "l2tabu" "orthodox") ("unicode-math" "math-style=ISO" "bold-style=ISO") ("biblatex" "backend=biber" "style=gb7714-2015" "backref=true") ("footmisc" "perpage" "hang" "symbol*") ("xcolor" "dvipsnames") ("todonotes" "colorinlistoftodos" "prependcaption" "textsize=small")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "data/titlepage"
    "data/dedication"
    "data/dingjiaphoto"
    "data/chengzhongcun"
    "data/houxiandai"
    "data/shengming"
    "data/gongzuori"
    "data/assange"
    "data/guojiaxingzhi"
    "data/aboutchina"
    "data/historychina"
    "data/gerenshehui"
    "data/nicai"
    "data/neoliber"
    "nag"
    "ctexbook"
    "ctexbook10"
    "amsmath"
    "amssymb"
    "xfrac"
    "unicode-math"
    "biblatex"
    "verse"
    "graphicx"
    "caption"
    "etoolbox"
    "pifont"
    "footmisc"
    "scrextend"
    "fancyhdr"
    "geometry"
    "emptypage"
    "hyperref"
    "microtype"
    "cleveref"
    "bookmark"
    "booktabs"
    "lscape"
    "float"
    "tocloft"
    "tocbibind"
    "enumitem"
    "xargs"
    "xcolor"
    "todonotes")
   (TeX-add-symbols
    '("dingphotov" 3)
    '("dingphotoh" 6)
    '("capsource" 1)
    "songti"
    "heiti"
    "fangsong"
    "kaishu"
    "UrlFont"
    "oldding"
    "rnum"
    "Rnum"
    "uroman"
    "uRoman")
   (LaTeX-add-labels
    "fig:#1"
    "fig:#4")
   (LaTeX-add-environments
    "dedication")
   (LaTeX-add-bibliographies
    "ref/refs"))
 :latex)

