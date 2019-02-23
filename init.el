;;; package --- Summary
;;; Commentary:
;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/custom_init.el")

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(package-selected-packages
   (quote
    (cquery dash ccls lsp-ui company-lsp yasnippet flycheck company groovy-mode yascroll visual-regexp stickyfunc-enhance speed-type spaceline smart-mode-line ido-ubiquitous highlight-thing highlight-symbol flycheck-protobuf connection)))
 '(safe-local-variable-values
   (quote
    ((eval progn
           (defun reload-code-in-app nil
             (interactive)
             (progn
               (save-some-buffers)
               (async-shell-command "pkill -SIGUSR1 example")))
           (global-set-key
            (kbd "C-c c r")
            (quote reload-code-in-app)))
     (eval progn
           (defun reload-code-in-app nil
             (interactive)
             (progn
               (save-some-buffers)
               (async-shell-command "pkill -SIGUSR1 bots")))
           (global-set-key
            (kbd "C-c c r")
            (quote reload-code-in-app)))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-symbol-face ((t (:inherit nil :underline (:color "#8abeb7" :style wave)))))
 '(persp-selected-face ((t (:foreground "#ff99ff" :weight bold)))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
