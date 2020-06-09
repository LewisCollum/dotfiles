(setq org-src-preserve-indentation t)
(setq org-src-fontify-natively t)
(setq org-src-window-setup 'current-window)

(require 'color)
(custom-set-faces
 '(org-block-begin-line
   ((t (:foreground "#7e79b3" :background "#3d3b52"))))
 '(org-block
   ((t (:background "#2c2b3b"))))
 '(org-block-end-line
   ((t (:foreground "#7e79b3" :background "#3d3b52")))))

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
