(TeX-add-style-hook "head"
 (lambda ()
    (LaTeX-add-environments
     "octavecode")
    (TeX-add-symbols
     "initfamily"
     "capl"
     "seccol"
     "cuadrocol"
     "finde"
     "cabeza"
     "cabezahead"
     "ocabezahead"
     "cabezaplain"
     "pies"
     "opies"
     "Octave"
     "docappar"
     "cappar"
     "a")
    (TeX-run-style-hooks
     "wrapfig"
     "blindtext"
     "scrpage2"
     "footsepline"
     "automark"
     "subcaption"
     "caption"
     "graphicx"
     "mdframed"
     "framemethod=TikZ"
     "atbegshi"
     "tikzpagenodes"
     "tikz"
     "xcolor"
     "table"
     "svgnames"
     "dvipsnames"
     "usenames"
     "hyperref"
     "multicol"
     "SIunits"
     "squaren"
     "amsopn"
     "amsthm"
     "amsmath"
     "amssymb"
     "marvosym"
     "fontenc"
     "T1"
     "venturis2"
     ""
     "inputenc"
     "utf8"
     "babel"
     "portuguese"
     "Typocaps")))

