;;; Package --- Summary
;;; Commentary:
;;; Code:
(require 'rtags)

;; (defun rtags-enable-standard-keybindings (&optional map prefix)
;;   "Enables rtags keybungings."
;;   (interactive)
;;   (unless map
;;     (setq map c-mode-base-map))
;;   (unless prefix
;;     (setq prefix "\C-cr"))
;;   (ignore-errors
;;     (define-key map (concat prefix ".") (function rtags-find-symbol-at-point))
;;     (define-key map (concat prefix ",") (function rtags-find-references-at-point))
;;     (define-key map (concat prefix "v") (function rtags-find-virtuals-at-point))
;;     (define-key map (concat prefix "V") (function rtags-print-enum-value-at-point))
;;     (define-key map (concat prefix "/") (function rtags-find-all-references-at-point))
;;     (define-key map (concat prefix "Y") (function rtags-cycle-overlays-on-screen))
;;     (define-key map (concat prefix ">") (function rtags-find-symbol))
;;     (define-key map (concat prefix "<") (function rtags-find-references))
;;     (define-key map (concat prefix "[") (function rtags-location-stack-back))
;;     (define-key map (concat prefix "]") (function rtags-location-stack-forward))
;;     (define-key map (concat prefix "D") (function rtags-diagnostics))
;;     (define-key map (concat prefix "G") (function rtags-guess-function-at-point))
;;     (define-key map (concat prefix "p") (function rtags-set-current-project))
;;     (define-key map (concat prefix "P") (function rtags-print-dependencies))
;;     (define-key map (concat prefix "e") (function rtags-reparse-file))
;;     (define-key map (concat prefix "E") (function rtags-preprocess-file))
;;     (define-key map (concat prefix "R") (function rtags-rename-symbol))
;;     (define-key map (concat prefix "U") (function rtags-print-cursorinfo))
;;     (define-key map (concat prefix "O") (function rtags-goto-offset))
;;     (define-key map (concat prefix ";") (function rtags-find-file))
;;     (define-key map (concat prefix "F") (function rtags-fixit))
;;     (define-key map (concat prefix "x") (function rtags-fix-fixit-at-point))
;;     (define-key map (concat prefix "B") (function rtags-show-rtags-buffer))
;;     (define-key map (concat prefix "I") (function rtags-imenu))
;;     (define-key map (concat prefix "T") (function rtags-taglist))))

;; (rtags-enable-standard-keybindings)

;;
(add-hook 'c-mode-hook 'rtags-start-process-unless-running)
(add-hook 'c++-mode-hook 'rtags-start-process-unless-running)
(add-hook 'objc-mode-hook 'rtags-start-process-unless-running)

;; company
(setq rtags-autostart-diagnostics t)
(setq rtags-completions-enabled t)
(require 'company)
(eval-after-load 'company
  '(delete 'company-backends 'company-clang))
(push 'company-rtags company-backends)

;; flycheck
(require 'flycheck-rtags)
(defun my-flycheck-rtags-setup ()
  (flycheck-select-checker 'rtags)
  (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
  (setq-local flycheck-check-syntax-automatically nil))
(add-hook 'c-mode-hook #'my-flycheck-rtags-setup)
(add-hook 'c++-mode-hook #'my-flycheck-rtags-setup)
(add-hook 'objc-mode-hook #'my-flycheck-rtags-setup)

(provide 'rtags_config)
;;; rtags_config.el ends here
