;; General emacs configuration file
;; Setup which-key autocomplete
;; Setup ido
;; Setup smex
;; Manage backup files
;; Default to spaces instead of tabs
;; Clean file before save

(require 'which-key)
(which-key-mode)

(setq ido-save-directory-list-file (expand-file-name "ido.last" my-save-dir))
(setq ido-enable-flex-matching t)
(ido-mode 1)

(require 'smex)
(smex-initialize)

(setq backup-by-copying t)
(setq backup-directory-alist `(("." . ,my-save-dir)))
(setq auto-save-file-name-transforms `((".*" ,my-save-dir t)))

(setq-default indent-tabs-mode nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq require-final-newline t)
