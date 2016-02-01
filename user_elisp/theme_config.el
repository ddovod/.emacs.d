;;; package --- summary
;;; Commentary:
;;; code:

;;;;;;;;;;;;;;;;;;;; solarized ;;;;;;;;;;;;;;;;;;;;
;; "Setup solarized theme."
;; (load-theme 'solarized-dark t)

;; (require 'solarized)
;; (setq solarized-scale-org-headlines nil)

;; (set-face-background 'highlight-indentation-face "#073642")
;; (set-face-background 'highlight-indentation-current-column-face "#586e75")

;; (set-face-foreground 'show-paren-match "#073642")
;; (set-face-background 'show-paren-match "#586e75")

;; (set-face-attribute 'anzu-mode-line nil
;;                     :foreground "yellow" :weight 'bold)

;;;;;;;;;;;;;;;;;;;; ample ;;;;;;;;;;;;;;;;;;;; 
;; (load-theme 'ample t t)
;; (enable-theme 'ample)


;;;;;;;;;;;;;;;;;;;; moe ;;;;;;;;;;;;;;;;;;;; 
;; (require 'moe-theme)
;; (moe-dark)


;;;;;;;;;;;;;;;;;;;; sanity ;;;;;;;;;;;;;;;;;;;; 
;; (require 'color-theme-sanityinc-tomorrow)
;; (color-theme-sanityinc-tomorrow-eighties)
(load-theme 'sanityinc-tomorrow-eighties t)

(provide 'theme_config)
;;; theme_config.el ends here
