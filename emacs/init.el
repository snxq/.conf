;; emacs 配置根文件

;; 将 lisp 文件夹放在加载目录中
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; ---------------------------------
(require 'init-packages)

;; UI Management
(require 'init-ui)

;; Keybinding Management
(require 'init-keybindings)

;; Editor Management
(require 'init-editor)
