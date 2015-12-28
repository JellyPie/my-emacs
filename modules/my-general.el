;; General emacs configuration file
;; Manage backup files
;; Default to spaces instead of tabs
;; Clean file before save

(setq backup-by-copying t)
(setq backup-directory-alist `(("." . ,my-save-dir)))
(setq auto-save-file-name-transforms `((".*" ,my-save-dir t)))

(setq-default indent-tabs-mode nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
