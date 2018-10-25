;;; package --- Summary
;;; Commentary:
;;; Code:

;; company configuration
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(eval-after-load 'company
  '(delete 'company-semantic company-backends))
(eval-after-load 'company
  '(delete 'company-clang company-backends))

(eval-after-load 'company
  '(push 'company-readline company-backends))
(add-hook 'rlc-no-readline-hook (lambda () (company-mode -1)))

(require 'company-restclient)
(eval-after-load 'company
  '(push 'company-restclient company-backends))

(require 'company-dabbrev)
(setq company-dabbrev-downcase nil)
(setq company-dabbrev-ignore-case nil)
(setq company-dabbrev-minimum-length 1)

(eval-after-load 'company
  '(push 'company-pseudo-tooltip-frontend company-frontends))
(eval-after-load 'company
  '(delete 'company-pseudo-tooltip-unless-just-one-frontend company-frontends))
(eval-after-load 'company
  '(delete 'company-preview-if-just-one-frontend company-frontends))

(require 'company-quickhelp)
(company-quickhelp-mode 1)
(setq company-quickhelp-delay 1)

(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)

(setq company-tooltip-maximum-width 80)

;;; company_config.el ends here
