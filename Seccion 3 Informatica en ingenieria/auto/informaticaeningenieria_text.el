(TeX-add-style-hook "informaticaeningenieria_text"
 (lambda ()
    (LaTeX-add-labels
     "datos"
     "resultados"
     "Lorentz"
     "proyecciones"
     "ruben"
     "propos")
    (TeX-run-style-hooks
     "DatosPuros"
     "DatosTendencia"
     "CurvaLorentz"
     "Proyecciones")))

