;; UI configuration
;; Set the color theme
;; Display column number in modeline
;; Hide chrome in GUI emacs

(load-theme 'cyberpunk t)
(column-number-mode 1)

(when window-system
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1))
