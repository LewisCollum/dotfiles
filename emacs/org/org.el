(load "~/.emacs.d/org/code.el")
(load "~/.emacs.d/org/keys.el")
(load "~/.emacs.d/org/todo.el")
(load "~/.emacs.d/org/capture.el")
(load "~/.emacs.d/org/export.el")

(setq org-list-allow-alphabetical t)
(add-hook 'org-mode-hook 'org-bullets-mode)

(require 'ob-async)
