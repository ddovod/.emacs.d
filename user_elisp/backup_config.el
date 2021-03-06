;;; package --- summary
;;; Commentary:
;;; code:

;; backup configuration
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups
(require 'backup-each-save)
(add-hook 'after-save-hook 'backup-each-save)

(provide 'backup_config)
;;; backup_config.el ends here
