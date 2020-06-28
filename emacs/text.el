(progn(setq-default indent-tabs-mode nil))
(setq-default tab-width 4)
(set-default-font "DejaVu Sans Mono-16")
(global-visual-line-mode t)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(define-globalized-minor-mode global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode t)))

(global-rainbow-mode t) ;;Illustrates color codes e.g. #10BBFF
