(require 'ob)

(add-to-list 'org-babel-tangle-lang-exts '("spice" . "cir"))

(defun get-string-from-file (filePath)
  "Return filePath's file content."
  (with-temp-buffer
    (insert-file-contents filePath)
    (buffer-string)))


(defun org-babel-expand-body:spice (body params)
  "Expand BODY according to PARAMS, return the expanded body."
  (let* ((vars (org-babel--get-vars params)))

    (setq newbody "");
    (setq bodylinelist (split-string body "\n"))
    (dolist (line bodylinelist newbody)
      (progn  ;loop through list of lines
        (setq wordlist (split-string line " "))
        (setq firstword 1)
        (dolist (word wordlist)
          (progn  ;loop through the words
            (if (string-match "\\$\\(.*\\)\\[\\(.*\\)\\]" word)
                (progn 
                  ;; if matchs a vector variable format
                  (setq varname (match-string 1 word))
                  (setq varindex (match-string 2 word))
                  ;; search varname in vars and use the value of varindex to word
                  (setq newword (nth (string-to-number varindex)
                                     (car
                                      (assoc-default varname vars
                                                     (lambda (key candidate)
                                                       (string= key candidate))))))

                  (if (not (eq newword nil))
                      (if (not (stringp newword))
                          (setq word (number-to-string newword))
                        (setq word newword)
                        ))
                  )
              ) ;; end of (if (string-match "\\$\\(.*\\)\\[\\(.*\\)\\]" word))
            (if (string-match "\\$\\(.*\\)\\." word) ;; if variable has a dot in the end
                (progn
                  ;; if matchs a non-vector variable format
                  (setq varname (match-string 1 word))
                  (setq newword
                        (assoc-default varname vars
                                       (lambda (key candidate)
                                         (string= key candidate))))
                  (if (not (eq newword nil))
                      (progn 
                        (if (not (stringp newword))
                            (setq newword (number-to-string newword)))
                        (setq word (replace-match (concat newword ".")  nil nil word))
                                        ;(setq word word)
                        )
                    ))
              );; end of (if (string-match "\\$\\(.*\\)\\." word)
            (if (string-match "\\$\\(.*\\)" word)
                (progn
                  ;; if matchs a non-vector variable format
                  (setq varname (match-string 1 word))
                  (setq newword
                        (assoc-default varname vars
                                       (lambda (key candidate)
                                         (string= key candidate))))
                  (if (not (eq newword nil))
                      (if (not (stringp newword))
                          (setq word (number-to-string newword))
                        (setq word newword)
                        ))
                  )
              );; end of (if (string-match "\\$\\(.*\\)" word)
            
            
            (setq newbody (concat newbody
                                  (if (not (eq firstword 1)) " ")
                                  word))
            (setq firstword 0)))
        (setq newbody (concat newbody "\n"))))))

(defun org-babel-execute:spice (body params)
  "Execute a block of Spice code with org-babel."
  (let ((body (org-babel-expand-body:spice body params))
        (vars (org-babel--get-vars params))
        (exec_string "ngspice -b "))
    
    (org-babel-eval exec_string body)
    (message (concat exec_string body))
  
    (mapc (lambda (pair)
            (when (string= (car pair) "file")
              (setq textfile (concat (cdr pair) ".txt"))
              (setq imagefile (concat (cdr pair) ".png"))))
          vars)
    (makunbound 'result)
  
    ;; Get measurement values from text-file by splitting comma separated values       
    (if (file-readable-p imagefile)
        (progn
          (if (boundp 'result)
              (add-to-list 'result (concat '"[[file:./" imagefile "]]") t)
            (setq result (concat '"[[file:./" imagefile "]]")))))
    result))

(provide 'ob-spice)
