;;; bury-successful-compilation-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bury-successful-compilation" "bury-successful-compilation.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from bury-successful-compilation.el

(defvar bury-successful-compilation nil "\
Non-nil if Bury-Successful-Compilation mode is enabled.
See the `bury-successful-compilation' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `bury-successful-compilation'.")

(custom-autoload 'bury-successful-compilation "bury-successful-compilation" nil)

(autoload 'bury-successful-compilation "bury-successful-compilation" "\
A minor mode to bury the *compilation* buffer upon successful
compilations.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bury-successful-compilation" '("bury-successful-compilation-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bury-successful-compilation-autoloads.el ends here
