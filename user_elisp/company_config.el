;;; package --- Summary
;;; Commentary:
;;; Code:

;; company configuration
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))
(eval-after-load 'company
  '(delete 'company-semantic company-backends))



;; (require 'company-c-headers)
;; (eval-after-load 'company
;;   '(add-to-list 'company-backends 'company-c-headers))


;; (setq company-c-headers-path-system '("usr/include/c++/4.9"))

;;; company_config.el ends here
