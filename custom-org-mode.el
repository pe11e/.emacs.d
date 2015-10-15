;; Custom modifications to org-mode

(setq org-publish-project-alist
           '(("org"
              :base-directory "~/org/"
              :publishing-directory "~/org_html"
              :section-numbers nil
              :table-of-contents nil
              :style "<link rel=\"stylesheet\"
                     href=\"../other/mystyle.css\"
                     type=\"text/css\"/>")))

(provide 'custom-org-mode)
