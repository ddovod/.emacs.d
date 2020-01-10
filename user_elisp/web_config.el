;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'web-mode)
(require 'company)
(require 'company-web)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.l?eex\\'" . web-mode))

(setq web-mode-enable-current-column-highlight t)
(setq web-mode-auto-close-style 2)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (set (make-local-variable 'company-backends) '(company-css company-web-html company-yasnippet company-files))
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

;;; web_config.el ends here
