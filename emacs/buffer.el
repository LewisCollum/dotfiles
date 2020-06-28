(add-hook 'after-change-major-mode-hook
          '(lambda ()(if (get-buffer "*scratch*")(kill-buffer "*scratch*"))))

(require 'interaction-log)
;;Note: Must turn on buffer first [interactive-log-mode]
(global-set-key (kbd "C-h C-l") (lambda ()(interactive)(display-buffer ilog-buffer-name)))

(setq-default message-log-max nil)                      
(kill-buffer "*Messages*")

;; Removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
          '(lambda ()
             (let ((buffer "*Completions*"))
               (and (get-buffer buffer)
                    (kill-buffer buffer)))))

(defun killBuffer(buffer)
  (and (get-buffer buffer)
       (kill-buffer buffer)))
  
;; Removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
          '(lambda()(killBuffer "*Completions")))

;; Show only one active window when opening multiple files at the same time.
(add-hook 'window-setup-hook 'delete-other-windows)
