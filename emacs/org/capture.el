(setq org-default-notes-file (concat org-directory "~/org/unsorted.org"))
(setq org-capture-templates
	  '(
		("t" "Todo" entry (file+headline "~/org/todo.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
		("i" "Ideas" entry (file+headline "~/org/ideas.org" "Ideas")
		 "* %?\n")))
