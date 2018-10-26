;;; readline-complete-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "readline-complete" "readline-complete.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from readline-complete.el

(autoload 'ac-rlc-setup-sources "readline-complete" "\
Add me to shell-mode-hook!

\(fn)" nil nil)

(autoload 'ac-rlc-prefix-shell-dispatcher "readline-complete" "\


\(fn)" nil nil)

(eval-after-load 'auto-complete '(eval '(ac-define-source shell '((candidates . rlc-candidates) (prefix . ac-rlc-prefix-shell-dispatcher) (requires . 0)))))

(autoload 'company-readline "readline-complete" "\
`company-mode' back-end using `readline-complete'.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "readline-complete" '("ac-" "rlc-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; readline-complete-autoloads.el ends here
