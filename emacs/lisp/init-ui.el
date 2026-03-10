;; ui management

(setq inhibit-startup-message t
      visible-bell nil
      frame-title-format '("%b - Emacs")
      display-line-numbers-type t)

(when (display-graphic-p)
  (set-fringe-mode 10))

(global-display-line-numbers-mode 1)
(column-number-mode 1)
(show-paren-mode 1)

(dolist (mode '(term-mode-hook
                shell-mode-hook
                eshell-mode-hook
                vterm-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(use-package monokai-theme
  :config
  (load-theme 'monokai t))

(provide 'init-ui)
