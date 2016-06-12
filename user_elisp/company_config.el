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

(setq company-minimum-prefix-length 1)

(eval-after-load 'company
  '(push 'company-readline company-backends))
(add-hook 'rlc-no-readline-hook (lambda () (company-mode -1)))

(require 'company-restclient)
(eval-after-load 'company
  '(push 'company-restclient company-backends))

(eval-after-load 'company
  '(push 'company-capf company-backends))



(require 'company-auctex)
(company-auctex-init)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)


;; (company-quickhelp-mode 1)
;; (setq company-quickhelp-delay 1)

;; (with-eval-after-load 'company
;;   (company-flx-mode +1))

;;; company_config.el ends here
