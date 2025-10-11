;; Keybinding Management

;; reload init file
(defun reload-init-file ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f3>") 'reload-init-file)

(provide 'init-keybindings)
