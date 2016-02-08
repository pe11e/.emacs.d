;; Key bindings
(define-key my-keys-minor-mode-map (kbd "C-o") 'er/expand-region)
(define-key my-keys-minor-mode-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key my-keys-minor-mode-map (kbd "M-h") 'helm-projectile)
(define-key my-keys-minor-mode-map (kbd "M-t") 'toggle-truncate-lines)
(define-key my-keys-minor-mode-map (kbd "M-e") 'emmet-mode)

(global-set-key (kbd "M-,") 'move-text-up)
(global-set-key (kbd "M-.") 'move-text-down)

(define-key dired-mode-map (kbd "f") 'dired-find-alternate-file)
(define-key dired-mode-map (kbd "^") (lambda ()
                                       (interactive)
                                       (find-alternate-file "..")))

(define-key my-keys-minor-mode-map (kbd "M-l") 'select-current-line)
(define-key my-keys-minor-mode-map (kbd "M-'") 'create-snippet)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)
;;(define-key magit-status-mode-map (kbd "q") 'magit-quit-session)

;;Multiple cursors
(global-set-key (kbd "C-c <right>") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c <left>") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c <down>") 'mc/mark-all-like-this)

;; Org mode
;;(define-key org-mode (kbd "S-M-<enter>") 'org-insert-todo-heading)

(provide 'key-bindings)
