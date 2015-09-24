;; Defaults
(set-frame-font "Source Code Pro for Powerline-14")
(setq org-src-fontify-natively t)
(load-theme 'niflheim t)

;; disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)

;; store all backup and autosave files in the tmp dir
;;(setq backup-directory-alist '(("~/.temp"))
;;(setq auto-save-file-name-transforms '(("~/.temp")))

(setq inhibit-startup-message t)
(setq-default indent-tabs-mode nil)

;; Indentation
(setq-default tab-width 2)
(setq css-indent-offset 2)

(setq mac-option-modifier 'none)
(setq ns-function-modifier 'meta)
(fset 'yes-or-no-p 'y-or-n-p)

(put 'dired-find-alternate-file 'disabled nil)

(provide 'defaults)
