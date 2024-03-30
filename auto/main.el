(TeX-add-style-hook
 "main"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "data/dedication"
    "data/preface"
    "data/dingjiaphoto"
    "data/chengzhongcun"
    "data/shengming"
    "data/gongzuori"
    "data/neoliber"
    "data/assange"
    "data/soviet"
    "dingjia"
    "dingjia10")
   (LaTeX-add-bibliographies
    "ref/refs"))
 :latex)

