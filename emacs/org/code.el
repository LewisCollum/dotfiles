(setq org-src-preserve-indentation t)
(setq org-src-fontify-natively t)
(setq org-src-window-setup 'current-window)

(defun no-org-confirm-babel-evaluate (lang body)
  (not (member lang '("C++"
                      "C"
                      "bash"
                      "python"
                      "elisp"
                      "plantuml"
                      "spice"
                      "R"
                      "octave"))))
(setq org-confirm-babel-evaluate 'no-org-confirm-babel-evaluate)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (python . t)
   (C . t)
   (latex . t)
   (plantuml . t)
   (R . t)
   (octave . t)))

(add-to-list 'load-path "~/.emacs.d/ob-spice/")
(require 'ob-spice)
