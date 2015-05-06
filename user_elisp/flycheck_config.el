;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-display-errors-delay 0.0)

(provide 'flycheck_config)
;;; flycheck_config.el ends here
