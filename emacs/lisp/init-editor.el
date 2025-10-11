;; Editor Management

;; close auto create backup file
(setq make-backup-files nil)

;; close auto save
(setq auto-save-default nil)

;; replace y/n to yes/no
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-editor)
