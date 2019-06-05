;;; package --- Summary
;;; commentary:
;;; code:

;; projectile
(require 'projectile)
(projectile-mode 1)
(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching nil)
;; (setq projectile-completion-system 'ivy)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p r") 'projectile-run-project)
(setq projectile-project-compilation-cmd "")
(setq projectile-project-run-cmd "")
(setq projectile-svn-command "find . -type f -not -iwholename '*.svn/*' -print0")

(provide 'projectile_config)
;;; projectile_config.el ends here

