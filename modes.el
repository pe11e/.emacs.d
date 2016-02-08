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
(global-linum-mode t)
(yas-global-mode t)
(emmet-mode t)
(projectile-global-mode t)
(electric-pair-mode 1)

(when (window-system)
 (scroll-bar-mode -1)
 (tool-bar-mode -1))

(delete-selection-mode t)
(show-paren-mode t)

;; Web mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.handlebars\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(provide 'modes)
