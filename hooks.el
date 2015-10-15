;; Hooks

;; Emmet
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indent-after-insert nil)))
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))

;; Org
(add-hook 'org-mode-hook (lambda ()
                           (set (make-local-variable 'electric-indent-functions)
                                (list (lambda(arg) 'no-indent)))))

;; Css
(add-hook 'css-mode-hook
          (lambda()
            (setq css-indent-offset 2)
            (setq indent-tabs-mode nil)))

(provide 'hooks)
