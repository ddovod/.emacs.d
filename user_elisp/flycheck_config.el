;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-display-errors-delay 0.0)

(setq flycheck-clang-args (quote ("-std=c++11")))
(setq flycheck-clang-language-standard "c++11")


(provide 'flycheck_config)
;;; flycheck_config.el ends here
