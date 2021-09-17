(progn(setq-default indent-tabs-mode nil))
(setq-default tab-width 4)

(add-to-list 'default-frame-alist
             '(font . "DejaVu Sans Mono-12"))

(global-visual-line-mode t)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

