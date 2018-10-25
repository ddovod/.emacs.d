;;; package --- Summary
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)

(add-hook 'html-mode-hook
          '(lambda ()
             (define-key html-mode-map (kbd "C-c <left>") nil)
             (define-key html-mode-map (kbd "C-c <right>") nil)
             (define-key html-mode-map (kbd "C-c <up>") nil)
             (define-key html-mode-map (kbd "C-c <down>") nil)))

;;; windmove_config.el ends here
