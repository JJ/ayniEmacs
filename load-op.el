(add-to-list 'load-path "/home/jmerelo/txt/docencia/repo-tutoriales/ayniEmacs")
(autoload 'org-present "org-present" nil t)
(eval-after-load "org-present"
  '(progn
     (add-hook 'org-present-mode-hook
               (lambda ()
                 (org-display-inline-images)
                 (org-present-hide-cursor)
                 (org-present-read-only)))
     (add-hook 'org-present-mode-quit-hook
               (lambda ()
                 (org-remove-inline-images)
                 (org-present-show-cursor)
                 (org-present-read-write)))))
