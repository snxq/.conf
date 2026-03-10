;; Project management and git integration.

(use-package projectile
  :init
  (projectile-mode 1)
  :custom
  (projectile-completion-system 'default)
  (projectile-project-search-path '("~/src/github/" "~/src/"))
  :bind-keymap
  ("C-c p" . projectile-command-map))

(use-package magit
  :commands (magit-status magit-blame-addition))

(provide 'init-project)
