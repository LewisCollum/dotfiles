(setq org-export-with-section-numbers nil)
(setq org-export-with-toc nil)
(setq org-export-with-sub-superscripts nil)

(setq org-latex-listings 'minted
      org-latex-packages-alist '(("" "minted")))

(require 'org-ref)
(setq org-latex-pdf-process
      '("latexmk -bibtex -pdflatex='%latex -shell-escape -interaction nonstopmode' -pdf -output-directory=%o -f %f"))

(setq org-latex-minted-options
      '(("framesep" "6pt") ("fontfamily" "courier")("fontsize" "\\footnotesize")))

(setq org-latex-image-default-width "")
(setq org-export-allow-bind-keywords t) ;; Allow #+bind:

(setq org-latex-minted-langs '((emacs-lisp "common-lisp")
                               (cc "c++")
                               (cperl "perl")
                               (shell-script "bash")
                               (caml "ocaml")
                               (spice "text")))

;; For hidden sections that can be selectively exported with tags
(require 'ox-extra)
(ox-extras-activate '(latex-header-blocks ignore-headlines))
