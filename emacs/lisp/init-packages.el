;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |

;; modify package source
(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			   ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			   ("melpa-stable" . "https://stable.melpa.org/packages/")))
  (package-initialize))

;; import cl
(require 'cl)

(defvar snxq/packages '(
			;; auto completion
			company
			;; golang support
			go-mode
			;; markdown support
			markdown-mode
			;; theme
			monokai-theme
			) "Default Packages")

(defun snxq/package-installed-p ()
  (cl-loop for pkg in snxq/packages
	when (not (package-installed-p pkg)) do (cl-return nil)
	finally (cl-return t)))

(unless (snxq/package-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg snxq/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(provide 'init-packages)
