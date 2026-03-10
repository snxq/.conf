(setq byte-compile-warnings '(cl-functions)
      package-enable-at-startup nil
      inhibit-startup-screen t
      frame-inhibit-implied-resize t
      ring-bell-function 'ignore
      gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(menu-bar-mode -1)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 64 1024 1024)
                  gc-cons-percentage 0.1)))
