(defconst indentSpaces 4)

(setq cmake-tab-width indentSpaces)
(c-add-style
 "normal-tab-style"
 '((indent-tabs-mode . nil)
   (c-basic-offset . indentSpaces)
   (c-offsets-alist . ((inline-open . 0)
                       (brace-list-open . 0)
                       (statement-case-open . +)
                       (substatement-open . 0)
                       (inlambda . 0) ; no extra indent for lambda
                       (block-open . 0))))) ; no space before {

(defun my-c++-mode-hook ()
  (c-set-style "normal-tab-style"))

(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(add-hook 'c-mode-hook 'my-c++-mode-hook)
