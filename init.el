(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

(yas-global-mode t)
(projectile-global-mode t)

(defvar my-keys-minor-mode-map (make-keymap) "my keys")

(ido-mode 1)
(linum-mode)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil)
(electric-indent-mode t)
(ac-config-default)

(set-frame-font "Source Code Pro for Powerline-14")

(setq org-src-fontify-natively t)

(global-visual-line-mode t)
(define-key my-keys-minor-mode-map (kbd "C-o") 'er/expand-region)
(define-key my-keys-minor-mode-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key my-keys-minor-mode-map (kbd "M-h") 'helm-projectile)

;;(define-key dired-mode-map (kbd "f") 'dired-find-alternate-file)
;;(define-key dired-mode-map (kbd "^") (lambda ()
;;                                       (interactive)
;;                                       (find-alternate-file "..")))

(add-hook 'org-mode-hook (lambda ()
                           (set (make-local-variable 'electric-indent-functions)
                                (list (lambda(arg) 'no-indent)))))

(when (window-system)
 (scroll-bar-mode -1)
 (tool-bar-mode -1))

(load-theme 'niflheim t)

(delete-selection-mode t)
(show-paren-mode t)

(setq make-backup-file nil)
(setq auto-save-default nil)
(setq inhibit-startup-message t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(setq mac-option-modifier 'none)
(setq ns-function-modifier 'meta)
(fset 'yes-or-no-p 'y-or-n-p)

(define-minor-mode my-keys-minor-mode
  "A minor mode for my custom keys"
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode t)

(defun select-current-line ()
  "Selects the current line"
  (interactive)
  (end-of-line)
  (push-mark (line-beginning-position) nil t))

(define-key my-keys-minor-mode-map (kbd "M-l") 'select-current-line)

(defun create-snippet (filename)
  (interactive "s")
  (let ((mode (symbol-name major-mode)))
    (find-file (format "~/.emacs.d/snippets/%s/%s" mode filename))
    (snippet-mode)))

(define-key my-keys-minor-mode-map (kbd "M-'") 'create-snippet)
  


