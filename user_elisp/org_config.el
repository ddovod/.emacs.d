;;; package --- Summary
;;; Commentary:
;;; Code:

(require 'org)

(add-hook 'org-agenda-mode-hook #'hack-dir-local-variables-non-file-buffer)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-log-done t)

;; (setq org-fast-tag-selection-single-key t)
;; (setq org-use-fast-todo-selection t)
;; (setq org-startup-truncated nil)

;; (setq org-enable-priority-commands nil)

;; (setq org-todo-keywords
;;       '(
;;         (sequence "IDEA(i)" "TODO(t)" "STARTED(s)" "NEXT(n)" "WAITING(w)" "|" "DONE(d)")
;;         (sequence "|" "CANCELED(c)" "DELEGATED(l)" "SOMEDAY(f)")
;;         ))

;; (setq org-todo-keyword-faces
;;       '(("IDEA" . (:foreground "GoldenRod" :weight bold))
;;         ("NEXT" . (:foreground "IndianRed1" :weight bold))
;;         ("STARTED" . (:foreground "OrangeRed" :weight bold))
;;         ("WAITING" . (:foreground "IndianRed1" :weight bold))
;;         ("CANCELED" . (:foreground "LimeGreen" :weight bold))
;;         ("DELEGATED" . (:foreground "LimeGreen" :weight bold))
;;         ("SOMEDAY" . (:foreground "LimeGreen" :weight bold))
;;         ))

;; (setq org-tag-persistent-alist
;;       '((:startgroup . nil)
;;         ("HOME" . ?h)
;;         ("RESEARCH" . ?r)
;;         ("TEACHING" . ?t)
;;         (:endgroup . nil)
;;         (:startgroup . nil)
;;         ("OS" . ?o)
;;         ("DEV" . ?d)
;;         ("WWW" . ?w)
;;         (:endgroup . nil)
;;         ("URGENT" . ?u)
;;         ("KEY" . ?k)
;;         ("HARD" . ?a)
;;         ("BONUS" . ?b)
;;         ("noexport" . ?x)
;;         )
;;       )

;; (setq org-tag-faces
;;       '(
;;         ("HOME" . (:foreground "GoldenRod" :weight bold))
;;         ("RESEARCH" . (:foreground "GoldenRod" :weight bold))
;;         ("TEACHING" . (:foreground "GoldenRod" :weight bold))
;;         ("OS" . (:foreground "IndianRed1" :weight bold))
;;         ("DEV" . (:foreground "IndianRed1" :weight bold))
;;         ("WWW" . (:foreground "IndianRed1" :weight bold))
;;         ("URGENT" . (:foreground "Red" :weight bold))
;;         ("KEY" . (:foreground "Red" :weight bold))
;;         ("HARD" . (:foreground "Red" :weight bold))
;;         ("BONUS" . (:foreground "GoldenRod" :weight bold))
;;         ("noexport" . (:foreground "Red" :weight bold))
;;         )
;; )

(provide 'org_config)
;;; org_config.el ends here
