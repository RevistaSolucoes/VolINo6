(TeX-add-style-hook "jugando"
 (lambda ()
    (TeX-add-symbols
     '("setrow" 9)
     "vol"
     "Title"
     "Author"
     "lshape")
    (TeX-run-style-hooks
     "tikz"
     "skak"
     "pifont"
     ""
     "latex2e"
     "scrartcl11"
     "scrartcl"
     "leqno"
     "11pt"
     "twoside"
     "a4paper"
     "../head"
     "jugando_text")))

