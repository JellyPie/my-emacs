;; evil-related settings
;; Setup evil
;; Setup evil-leader & register keybindings
;; Setup evil-nerd-commenter

(require 'evil)
(evil-mode 1)

(require 'evil-leader)
(global-evil-leader-mode)

(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  ":" 'smex
  "m:" 'smex-major-mode-commands

  "eq" 'save-buffers-kill-terminal

  "hf" 'describe-function
  "hk" 'describe-key
  "hv" 'describe-variable

  "ff" 'ido-find-file
  "fw" 'save-buffer

  "bb" 'ido-switch-buffer
  "bc" 'kill-this-buffer
  "bl" 'list-buffers

  "ws" 'evil-window-split
  "wv" 'evil-window-vsplit
  "wc" 'evil-window-delete
  "wo" 'delete-other-windows
  "w=" 'balance-windows
  "ww" 'evil-window-next
  "wh" 'evil-window-left
  "wj" 'evil-window-down
  "wk" 'evil-window-up
  "wl" 'evil-window-right)

(evil-leader/set-key-for-mode 'go-mode
  "mf" 'gofmt
  "mi" 'go-goto-imports
  "ma" 'go-import-add
  "mr" 'go-remove-unused-imports)

(evilnc-default-hotkeys)
