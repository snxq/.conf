;; LSP and diagnostics.

(use-package which-key
  :hook (after-init . which-key-mode))

(use-package flycheck
  :hook (after-init . global-flycheck-mode))

(use-package yasnippet
  :hook (after-init . yas-global-mode))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :custom
  (lsp-completion-provider :capf)
  (lsp-enable-snippet t)
  (lsp-headerline-breadcrumb-enable t)
  (lsp-idle-delay 0.3)
  :config
  (lsp-enable-which-key-integration t))

(use-package lsp-ui
  :after lsp-mode
  :custom
  (lsp-ui-doc-enable t)
  (lsp-ui-doc-position 'top)
  (lsp-ui-doc-delay 1.5)
  (lsp-ui-sideline-enable nil)
  (lsp-ui-peek-enable t))

(provide 'init-lsp)
