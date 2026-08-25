;; RSS reader configuration.

(use-package elfeed
  :bind ("C-c r" . elfeed)
  :config
  (setq-default elfeed-search-filter "@1-month-ago +unread "))

(use-package elfeed-org
  :after elfeed
  :config
  (setq rmh-elfeed-org-files
        (list (expand-file-name "etc/elfeed.org" snxq/emacs-dir)))
  (elfeed-org))

(provide 'init-rss)
