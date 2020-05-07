(load "~/.emacs.d/cask_location.el")
(require 'cask cask_location)
(cask-initialize)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(add-hook 'emacs-startup-hook 'eshell)
(setq inhibit-startup-screen t)
(setq ring-bell-function 'ignore)
