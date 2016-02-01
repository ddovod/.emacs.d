;;; package --- Summary
;;; Commentary:
;;; Code:


(require 'highlight-indentation)
(require 'yaml-mode)
(add-hook 'yaml-mode-hook
          '(lambda ()
             (define-key yaml-mode-map "\C-m" 'newline-and-indent)
             (highlight-indentation-mode)
             (highlight-indentation-current-column-mode)))

(provide 'yaml_config)
;;; yaml_config.el ends here
