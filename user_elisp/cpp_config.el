;;; package --- Summary
;;; Commentary:
;;; Code:

;; setup for c/c++ development
(require 'cc-mode)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(setq c-default-style "bsd"
      indent-tabs-mode nil
      c-basic-offset 4)

;; (defun test-test-test ()
;;   "ARG."
;;   (interactive)
;;   (insert "        "))
                
;; (global-set-key [tab] 'test-test-test)

;; (require 'yasnippet)
;; (setq yas-fallback-behavior 'call-other-command)

(provide 'cpp_config)
;;; cpp_config.el ends here
