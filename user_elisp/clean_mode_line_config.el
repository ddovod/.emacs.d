;;; package --- Summary
;;; Commentary:
;;; Code:

;;; Greek letters - C-u C-\ greek ;; C-\ to revert to default
;;; ς ε ρ τ υ θ ι ο π α σ δ φ γ η ξ κ λ ζ χ ψ ω β ν μ

;; `((auto-complete-mode . " α")
;;   (yas-minor-mode . " γ")
;;   (paredit-mode . " Φ")
;;   (eldoc-mode . "")
;;   (abbrev-mode . "")
;;   (undo-tree-mode . " τ")
;;   (volatile-highlights-mode . " υ")
;;   (elisp-slime-nav-mode . " δ")
;;   (nrepl-mode . " η")
;;   (nrepl-interaction-mode . " η")
;;   ;; Major modes
;;   (clojure-mode . "λ")
;;   (hi-lock-mode . "")
;;   (python-mode . "")
;;   (emacs-lisp-mode . "ε")
;;   (markdown-mode . "md"))


(defvar mode-line-cleaner-alist
  '(
    ;; don't show at all
    (drag-stuff-mode . "")
    (rainbow-mode . "")
    (subword-mode . "")
    (company-mode . "")
    (yas-minor-mode . "")
    (abbrev-mode . "")
    (irony-mode . "")
    ;; minor modes
    ;; major modes
    (emacs-lisp-mode . "(ELISP)")
    (c++-mode . "(C++)")
    (cmake-mode . "(CMAKE)")
    )
  "Alist for `clean-mode-line'.
When you add a new element to the alist, keep in mind that you
must pass the correct minor/major mode symbol and a string you
want to use in the modeline *in lieu of* the original.")

(defun clean-mode-line ()
  "Mode line tweak."
  (interactive)
  (loop for cleaner in mode-line-cleaner-alist
        do (let* ((mode (car cleaner))
                  (mode-str (cdr cleaner))
                  (old-mode-str (cdr (assq mode minor-mode-alist))))
             (when old-mode-str
               (setcar old-mode-str mode-str))
             ;; major mode
             (when (eq mode major-mode)
               (setq mode-name mode-str)))))

(add-hook 'after-change-major-mode-hook 'clean-mode-line)

(provide 'clean_mode_line_config)
;;; clean_mode_line_config.el ends here
