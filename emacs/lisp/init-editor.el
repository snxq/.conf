;; Editor Management

;; Keep generated state out of project directories.
(defconst snxq/cache-dir
  (expand-file-name "var/" user-emacs-directory))

(defconst snxq/backup-dir
  (expand-file-name "backup/" snxq/cache-dir))

(defconst snxq/auto-save-dir
  (expand-file-name "auto-save/" snxq/cache-dir))

(make-directory snxq/backup-dir t)
(make-directory snxq/auto-save-dir t)

(setq make-backup-files t
      backup-directory-alist `(("." . ,snxq/backup-dir))
      auto-save-default nil
      auto-save-file-name-transforms `((".*" ,snxq/auto-save-dir t))
      create-lockfiles nil
      savehist-file (expand-file-name "history" snxq/cache-dir)
      recentf-save-file (expand-file-name "recentf" snxq/cache-dir)
      save-place-file (expand-file-name "places" snxq/cache-dir)
      use-short-answers t
      indent-tabs-mode nil)

;; replace y/n to yes/no
(fset 'yes-or-no-p 'y-or-n-p)

(save-place-mode 1)
(savehist-mode 1)
(recentf-mode 1)

(provide 'init-editor)
