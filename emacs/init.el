(load "~/.emacs.d/cask_location.el")
(require 'cask cask_location)
(cask-initialize)

(when (display-graphic-p) (load "~/.emacs.d/layout.el"))
(load "~/.emacs.d/metapost-mode+.el")
(load "~/.emacs.d/org/org.el")
(load "~/.emacs.d/startup.el")
(load "~/.emacs.d/backup.el")
(load "~/.emacs.d/text.el")

(load "~/.emacs.d/code/cpp.el")
(load "~/.emacs.d/code/latex.el")

(setq bashGeneratedCustom "~/.emacs.d/custom.el")
(load bashGeneratedCustom)
