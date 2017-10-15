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

;; backup
;; company
      ;; (company-preview (:foreground ,comment :background ,contrast-bg))
      ;; (company-preview-common (:inherit company-preview :foreground ,red))
      ;; (company-preview-search (:inherit company-preview :foreground ,blue))
      ;; (company-tooltip (:background ,contrast-bg))
      ;; (company-tooltip-selection (:background ,highlight :box (:line-width -1 :color ,comment)))
      ;; (company-tooltip-common (:inherit company-tooltip :foreground ,red))
      ;; (company-tooltip-common-selection (:inherit company-tooltip-selection :foreground ,red))
      ;; (company-tooltip-search (:inherit company-tooltip :foreground ,blue))
      ;; (company-tooltip-annotation (:inherit company-tooltip :foreground ,green))
      ;; (company-tooltip-annotation-selection (:inherit company-tooltip-selection :foreground ,green))
      ;; (company-scrollbar-bg (:inherit 'company-tooltip :background ,highlight))
      ;; (company-scrollbar-fg (:background ,contrast-bg))
      ;; (company-echo-common (:inherit company-echo :foreground ,red))

(provide 'theme_config)
;;; theme_config.el ends here
