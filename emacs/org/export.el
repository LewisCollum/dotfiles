(setq org-export-with-section-numbers nil)
(setq org-export-with-toc nil)
(setq org-export-with-sub-superscripts nil)

(setq org-latex-listings 'minted
      org-latex-packages-alist '(("" "minted"))
      org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(setq org-latex-minted-options
      '(("framesep" "6pt") ("fontfamily" "courier")("fontsize" "\\footnotesize")))

(setq org-latex-image-default-width "")
(setq org-export-allow-bind-keywords t) ;; Allow #+bind:
