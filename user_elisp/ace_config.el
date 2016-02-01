;;; package --- summary
;;; Commentary:
;;; code:

(require 'ace-jump-mode)
(define-key global-map (kbd "C-;") 'ace-jump-word-mode)
(define-key global-map (kbd "C-'") 'ace-jump-char-mode)

(provide 'ace_config)
;;; ace_config.el ends here
