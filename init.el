(require 'dired)
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(add-to-list 'load-path "~/src/org-mode/lisp")
(cask-initialize)

;; Define the list of files to load
(defvar *load-files*
  '(defaults
    modes
    functions
    key-bindings
    hooks
    custom-org-mode))

;; Load the files in the .emacs.d directory
(defvar *base-path* (expand-file-name (file-name-directory load-file-name)))

(dolist (file *load-files*)
  (load (format "%s%s" *base-path* file))
  (require file))
