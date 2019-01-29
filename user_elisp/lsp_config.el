;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'lsp)
(setq lsp-auto-configure nil)
(setq lsp-prefer-flymake nil)
(add-hook 'lsp-mode-hook 'lsp-enable-imenu)

(require 'lsp-ui-imenu)
(setq lsp-ui-imenu-kind-position 'left)

(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(require 'lsp-ui-sideline)
(setq lsp-ui-sideline-show-hover nil)
(setq lsp-ui-sideline-show-symbol nil)
(setq lsp-ui-sideline-show-code-actions nil)
(setq lsp-ui-sideline-delay 0.0)

(require 'lsp-ui-flycheck)
(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-after-open-hook (lambda () (lsp-ui-flycheck-enable 1))))

(require 'lsp-ui-peek)
(setq lsp-ui-peek-always-show t)

(require 'lsp-ui-doc)
(setq lsp-ui-doc-header t)
(setq lsp-ui-doc-use-childframe nil)

(global-set-key (kbd "C-c l d") 'lsp-ui-peek-find-definitions)
(global-set-key (kbd "C-c l r") 'lsp-ui-peek-find-references)

(require 'company)
(require 'company-lsp)
(eval-after-load 'company
  '(push 'company-lsp company-backends))
(setq company-lsp-cache-candidates nil)
(setq company-transformers '(company-sort-by-backend-importance))

(require 'projectile)
(with-eval-after-load 'projectile
  (setq projectile-project-root-files-top-down-recurring
        (append '("compile_commands.json")
                projectile-project-root-files-top-down-recurring)))

(provide 'lsp_config)
;;; lsp_config.el ends here
