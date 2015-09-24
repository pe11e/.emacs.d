(require 'dired)
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(add-to-list 'load-path "~/src/org-mode/lisp")
(cask-initialize)

;; Define the list of files to load
(defvar *load-files*
  '(defaults
    modes
    functions
    key-bindings))

;; Load the files in the .emacs.d directory
(defvar *base-path* (expand-file-name (file-name-directory load-file-name)))

(dolist (file *load-files*)
  (load (format "%s%s" *base-path* file))
  (require file))

(add-hook 'org-mode-hook (lambda ()
                           (set (make-local-variable 'electric-indent-functions)
                                (list (lambda(arg) 'no-indent)))))

(add-hook 'css-mode-hook
          (lambda()
            (setq css-indent-offset 2)
            (setq indent-tabs-mode nil)))
