(c-add-style
 "normal-tab-style"
 '((indent-tabs-mode . nil)
   (c-basic-offset . 4)
   (c-offsets-alist . ((inline-open . 0)
                       (brace-list-open . 0)
                       (statement-case-open . +)))))

(defun my-c++-mode-hook ()
  (c-set-style "normal-tab-style"))

(add-hook 'c++-mode-hook 'my-c++-mode-hook)
