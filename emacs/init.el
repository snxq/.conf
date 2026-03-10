;; snxq's Emacs configuration entry point.

(defconst snxq/emacs-dir
  (file-name-directory (or load-file-name buffer-file-name)))

(defconst snxq/lisp-dir
  (expand-file-name "lisp" snxq/emacs-dir))

(add-to-list 'load-path snxq/lisp-dir)

(setq custom-file (expand-file-name "custom.el" snxq/emacs-dir))
(load custom-file 'noerror 'nomessage)

(require 'init-packages)
(require 'init-ui)
(require 'init-editor)
(require 'init-completion)
(require 'init-project)
(require 'init-lsp)
(require 'init-python)
(require 'init-keybindings)
