(c-add-style "normal-tab-style"
             '((indent-tabs-mode . nil); use spaces rather than tabs
               (c-basic-offset . 4); indent by four spaces
               (c-offsets-alist . ((inline-open . 0); custom indentation rules
                                   (brace-list-open . 0)
                                   (statement-case-open . +)))))

(defun my-c++-mode-hook ()
  (c-set-style "normal-tab-style"))        ; use my-style defined above

(add-hook 'c++-mode-hook 'my-c++-mode-hook)
