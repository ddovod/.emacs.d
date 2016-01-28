;;; package --- Summary
;;; commentary:
;;; code:

;; projectile
(require 'projectile)
(projectile-global-mode)
(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching nil)
(setq projectile-mode-line '(:eval (format " Proj[%s]" (projectile-project-name))))

(provide 'projectile_config)
;;; projectile_config.el ends here

