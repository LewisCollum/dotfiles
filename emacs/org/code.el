(setq org-src-preserve-indentation t)
(setq org-src-fontify-natively t)

(require 'color)
(setq org-src-block-faces
      '(("bash" (:background "#333049"))
        ("python" (:background "#242149"))
        ("C++" (:background "#242149"))
        ("R" (:background "#003264"))))

(defun no-org-confirm-babel-evaluate (lang body)
  (not (member lang '("C++" "C" "bash" "python" "elisp" "plantuml" "spice" "R"))))
(setq org-confirm-babel-evaluate 'no-org-confirm-babel-evaluate)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (python . t)
   (C . t)
   (latex . t)
   (plantuml . t)
   (R . t)))

(add-to-list 'load-path "~/.emacs.d/ob-spice/")
(require 'ob-spice)
