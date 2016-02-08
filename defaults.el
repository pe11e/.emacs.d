;; Defaults
(set-frame-font "Source Code Pro for Powerline-14")
(load-theme 'solarized-dark t)

;; Disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

(setq inhibit-startup-message t)

;; Scroll behaviour
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)

;; Line and column numbers
(setq truncate-lines t)

;; Org mode
(setq org-log-done 'time)
(setq org-src-fontify-natively t)

;; Indentation
(setq indent-tabs-mode nil)
(setq tab-width 2)
(setq css-indent-offset 2)
(custom-set-variables
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t))

(setq mac-option-modifier 'none)
(setq ns-function-modifier 'meta)
(fset 'yes-or-no-p 'y-or-n-p)

;; Neotree
(setq neo-theme 'nerd)
(custom-set-faces
 '(neo-banner-face ((t . (:inherit shadow))) t)
 '(neo-header-face ((t . (:inherit shadow))) t)
 '(neo-root-dir-face ((t . (:inherit link-visited :underline nil))) t)
 '(neo-dir-link-face ((t . (:inherit dired-directory))) t)
 '(neo-file-link-face ((t . (:inherit default))) t)
 '(neo-button-face ((t . (:inherit dired-directory))) t)
 '(neo-expand-btn-face ((t . (:inherit button))) t))

(put 'dired-find-alternate-file 'disabled nil)

(provide 'defaults)
