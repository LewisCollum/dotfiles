(load "~/.emacs.d/cask_location.el")
(require 'cask cask_location)
(cask-initialize)
;; (add-to-list 'load-path "~/.emacs.d/code/")
;; (require 'ob-spice)

(load "~/.emacs.d/metapost-mode+.el")
(load "~/.emacs.d/org/org.el")
(load "~/.emacs.d/layout.el")
(load "~/.emacs.d/startup.el")
(load "~/.emacs.d/backup.el")

(progn(setq-default indent-tabs-mode nil))
(setq-default tab-width 4)
(load "~/.emacs.d/code/cpp.el")
(load "~/.emacs.d/code/latex.el")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
