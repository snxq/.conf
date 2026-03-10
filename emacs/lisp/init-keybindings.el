;; Keybinding Management

;; reload init file
(defun snxq/reload-init-file ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f3>") #'snxq/reload-init-file)
(global-set-key (kbd "C-x g") #'magit-status)
(global-set-key (kbd "C-c p") projectile-command-map)

(provide 'init-keybindings)
