;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-display-errors-delay 0.0)

(setq-default flycheck-disabled-checkers '(c/c++-clang))
(setq-default flycheck-disabled-checkers '(c/c++-gcc))
(setq-default flycheck-disabled-checkers '(c/c++-cppcheck))

;; (with-eval-after-load 'flycheck
  ;; (flycheck-pos-tip-mode))

;; This stuff prevents selection of some text if popup is shown, but looks better than pos-tip
;; (add-hook 'flycheck-mode-hook 'flycheck-popup-tip-mode)

(provide 'flycheck_config)
;;; flycheck_config.el ends here
