(TeX-add-style-hook
 "main"
 (lambda ()
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
    "data/aboutchina"
    "data/historychina"
    "data/historychina2"
    "data/historychina3"
    "dingjia"
    "dingjia10")
   (LaTeX-add-bibliographies
    "ref/refs"))
 :latex)

