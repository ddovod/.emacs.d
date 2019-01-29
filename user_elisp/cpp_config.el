;;; package --- Summary
;;; Commentary:
;;; Code:

;; setup for c/c++ development
(require 'cc-mode)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.inl\\'" . c++-mode))
(setq c-default-style "bsd"
      indent-tabs-mode nil
      c-basic-offset 4)
(c-set-offset 'case-label '+)
(c-set-offset 'inlambda 0)

(setq c-basic-offset 4)
(add-hook 'java-mode-hook
          '(lambda ()
             (setq c-basic-offset 4)
             )
          )

;; ccls
;; (require 'ccls)
;; (add-hook 'c-mode-common-hook #'lsp)

;; cquery
(require 'cquery)
(setq cquery-executable "cquery")
(setq cquery-extra-init-params '(:index (:comments 2)
                                        :cacheFormat "msgpack"))
(setq cquery-cache-dir "~/.cquery_cache")
(setq cquery-extra-args '("--log-file=/tmp/cquery.log"))

(add-hook 'c-mode-common-hook #'lsp)

(provide 'cpp_config)
;;; cpp_config.el ends here
