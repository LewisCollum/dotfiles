(load "~/.emacs.d/cask_location.el")
(require 'cask cask_location)
(cask-initialize)

(load "~/.emacs.d/layout.el")
(load "~/.emacs.d/metapost-mode+.el")
(load "~/.emacs.d/org/org.el")
(load "~/.emacs.d/startup.el")
(load "~/.emacs.d/backup.el")
(load "~/.emacs.d/text.el")

(load "~/.emacs.d/code/cpp.el")
(load "~/.emacs.d/code/latex.el")

(setq bashGeneratedCustom "~/.emacs.d/custom.el")
(load bashGeneratedCustom)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (org-bullets package-build shut-up epl git commander f dash s))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
