;;; package --- Summary
;;; Commentary:
;;; code:

(set-frame-font "SourceCodePro-10")

(set-face-attribute 'default nil :font "SourceCodePro-10")
(set-face-attribute 'fixed-pitch nil :font "SourceCodePro-10")
(set-face-attribute 'variable-pitch nil :font "SourceCodePro-10")

(require 'org)
(setq org-src-fontify-natively t)
(setq org-support-shift-select t)

(provide 'font_config)
;;; font_config.el ends here
