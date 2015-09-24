;; Modes

(defvar my-keys-minor-mode-map (make-keymap) "my keys")

(define-minor-mode my-keys-minor-mode
  "A minor mode for my custom keys"
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode t)

(ido-mode t)
(linum-mode t)
(ido-everywhere t)
(flx-ido-mode t)
(setq ido-use-faces nil)
(electric-indent-mode t)
(ac-config-default)
(global-visual-line-mode t)
(yas-global-mode t)
(emmet-mode t)
(projectile-global-mode t)

(when (window-system)
 (scroll-bar-mode -1)
 (tool-bar-mode -1))

(delete-selection-mode t)
(show-paren-mode t)

(provide 'modes)
