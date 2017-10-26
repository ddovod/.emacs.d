;;; package --- Summary
;;; Commentary:
;;; code:

(defvar my-font-name "SourceCodePro-10")
(if (eq system-type 'darwin)
    (setq my-font-name "Source Code Pro-12")
  )

(set-frame-font my-font-name)
(set-face-attribute 'default nil :font my-font-name)
(set-face-attribute 'fixed-pitch nil :font my-font-name)
(set-face-attribute 'variable-pitch nil :font my-font-name)

(require 'org)
(setq org-src-fontify-natively t)
(setq org-support-shift-select t)

(provide 'font_config)
;;; font_config.el ends here
