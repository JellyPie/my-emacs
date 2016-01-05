;; evil-related settings
;; Setup evil
;; Setup evil-leader & register keybindings
;; Setup evil-nerd-commenter

(require 'evil)
(evil-mode 1)

(require 'evil-leader)
(global-evil-leader-mode)

(evil-leader/set-leader "<SPC>")
(evil-leader/set-key-for-mode 'go-mode
  "gf" 'gofmt
  "gi" 'go-goto-imports
  "ga" 'go-import-add
  "gr" 'go-remove-unused-imports)

(evilnc-default-hotkeys)
