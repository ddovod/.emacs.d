;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(setq lsp-highlight-symbol-at-point nil)

(require 'lsp-ui-imenu)
(add-hook 'lsp-after-open-hook 'lsp-ui-imenu-enable)

(require 'lsp-ui-sideline)
(setq lsp-ui-sideline-show-code-actions nil)
(setq lsp-ui-sideline-show-hover nil)
(setq lsp-ui-sideline-show-symbol nil)

(require 'lsp-ui-peek)
(setq lsp-ui-peek-always-show t)

(require 'lsp-ui-doc)
(setq lsp-ui-doc-header t)
(setq lsp-ui-doc-use-childframe nil)

(global-set-key (kbd "C-c l d") 'lsp-ui-peek-find-definitions)
(global-set-key (kbd "C-c l r") 'lsp-ui-peek-find-references)

(provide 'lsp_config)
;;; lsp_config.el ends here
