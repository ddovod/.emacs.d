;;; package --- Summaru
;;; Commentary:
;;; Code:

(require 'yasnippet)
(yas-global-mode 1)

;; Add yasnippet support for all company backends
;; https://github.com/syl20bnr/spacemacs/pull/179
(require 'company)


;; (push '(company-distel :with company-yasnippet) company-backends)


(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")

(defun company-mode/backend-with-yas (backend)
  "(as BACKEND) Yasnippet support for company backends."
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))

(setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))


;; (add-hook 'erlang-mode-hook
;;           (lambda ()
;;             (set (make-local-variable 'company-backends)
;;                  '((company-dabbrev-code company-yasnippet)))))


;;; yasnippet_config.el ends here
