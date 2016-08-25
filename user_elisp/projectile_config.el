;;; package --- Summary
;;; commentary:
;;; code:

;; projectile
(require 'projectile)
(projectile-global-mode)
(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching nil)
(define-key projectile-mode-map (kbd "C-c p r") 'projectile-run-project)

(provide 'projectile_config)
;;; projectile_config.el ends here

