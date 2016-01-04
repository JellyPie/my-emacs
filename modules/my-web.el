;; Webdev related modules and settings
;; Configure web-mode.el autoloads
;; Configure web-mode.el settings

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-hook 'web-mode-hook (lambda () (setq web-mode-markup-indent-offset 2)))
