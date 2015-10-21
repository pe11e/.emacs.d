;; Key bindings
(define-key my-keys-minor-mode-map (kbd "C-o") 'er/expand-region)
(define-key my-keys-minor-mode-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key my-keys-minor-mode-map (kbd "M-h") 'helm-projectile)
(define-key my-keys-minor-mode-map (kbd "M-t") 'toggle-truncate-lines)

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

;; Org mode
;;(define-key org-mode (kbd "S-M-<enter>") 'org-insert-todo-heading)

(provide 'key-bindings)
