;;; package --- summary
;;; Commentary:
;;; Code:

(require 'magit-gitflow)
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)


(setq magit-commit-show-diff nil)

(provide 'git_config)

;;; git_config.el ends here
