

;; ace jump mode
(require 'ace-jump-mode)
(define-key global-map (kbd "C-;") 'ace-jump-word-mode)
(define-key global-map (kbd "C-'") 'ace-jump-char-mode)
