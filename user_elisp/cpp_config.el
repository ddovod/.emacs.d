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

;; cquery
(require 'cquery)
(setq cquery-executable "cquery")
(setq cquery-extra-init-params '(:index (:comments 2)
                                        :cacheFormat "msgpack"))
(setq cquery-cache-dir "~/.cquery_cached_index")
(setq cquery-extra-args '("--log-file=/tmp/cq.log"))

(require 'company-lsp)
(eval-after-load 'company
  '(push 'company-lsp company-backends))
(setq company-lsp-cache-candidates nil)
(require 'company)
(setq company-transformers '(company-sort-by-backend-importance))

(require 'projectile)
(with-eval-after-load 'projectile
  (setq projectile-project-root-files-top-down-recurring
        (append '("compile_commands.json"
                  ".cquery")
                projectile-project-root-files-top-down-recurring)))

(defun cquery//enable ()
  "Docs."
  (condition-case nil
      (lsp-cquery-enable)
    (user-error nil)))

(use-package cquery
             :commands lsp-cquery-enable
             :init (add-hook 'c-mode-common-hook #'cquery//enable))

(provide 'cpp_config)
;;; cpp_config.el ends here
