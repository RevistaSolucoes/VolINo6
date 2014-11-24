(TeX-add-style-hook "matematicaseningenieria"
 (lambda ()
    (TeX-add-symbols
     "crefrangeconjunction"
     "vol"
     "Title"
     "Author")
    (TeX-run-style-hooks
     "cleveref"
     "noabbrev"
     "circuitikz"
     "enumerate"
     ""
     "latex2e"
     "scrartcl11"
     "scrartcl"
     "leqno"
     "11pt"
     "twoside"
     "a4paper"
     "../head"
     "matematicaseningenieria_text_pt")))

