;; Python development workflow.

(use-package exec-path-from-shell
  :if (and (memq system-type '(darwin gnu/linux))
           (not noninteractive))
  :config
  (exec-path-from-shell-initialize)
  (dolist (var '("PYTHONPATH" "VIRTUAL_ENV" "WORKON_HOME"))
    (exec-path-from-shell-copy-env var)))

(use-package pyvenv
  :commands (pyvenv-activate pyvenv-workon))

(use-package ruff-format
  :hook ((python-mode . ruff-format-on-save-mode)
         (python-ts-mode . ruff-format-on-save-mode)))

(use-package lsp-pyright
  :after lsp-mode
  :custom
  (lsp-pyright-auto-import-completions t)
  (lsp-pyright-use-library-code-for-types t)
  :config
  (require 'lsp-pyright))

(use-package lsp-ruff
  :ensure nil
  :after lsp-mode
  :custom
  (lsp-ruff-lint-enable t)
  :config
  (require 'lsp-ruff))

(defun snxq/python-mode-setup ()
  "Shared defaults for Python buffers."
  (setq-local tab-width 4)
  (setq-local python-indent-offset 4)
  (setq-local fill-column 88)
  (setq-local indent-tabs-mode nil)
  (setq-local lsp-enabled-clients '(pyright ruff))
  (when buffer-file-name
    (run-with-idle-timer
     0 nil
     (lambda (buffer)
       (when (buffer-live-p buffer)
         (with-current-buffer buffer
           (unless (bound-and-true-p lsp-mode)
             (lsp)))))
     (current-buffer))))

(use-package python
  :ensure nil
  :mode ("\\.py\\'" . python-mode)
  :custom
  (python-shell-interpreter "python3")
  :hook ((python-mode . snxq/python-mode-setup)
         (python-ts-mode . snxq/python-mode-setup)))

(provide 'init-python)
