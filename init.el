;; Main emacs configuration file
;; Ensure required packages are installed
;; Modularize the configuration

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defconst my-packages '(zenburn-theme ample-theme cyberpunk-theme evil
                                      go-mode web-mode which-key
                                      evil-leader evil-nerd-commenter
                                      smex)
  "A list of packages that will be installed if missing when firing emacs")

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(defconst my-emacs-dir (file-name-directory load-file-name) "Top-level emacs dir")
(defconst my-module-dir (expand-file-name "modules" my-emacs-dir) "Personal configuration")
(defconst my-save-dir (expand-file-name "cache" my-emacs-dir) "Autosave/History")

(unless (file-exists-p my-save-dir)
  (make-directory my-save-dir))

(add-to-list 'load-path my-module-dir)
(mapc 'load (directory-files my-module-dir nil "^[^#].*\.el$"))
