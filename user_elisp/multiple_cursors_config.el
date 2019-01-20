;;; package --- Summary
;;; Commentary:
;;; Code:

;; multiple cursors
(require 'multiple-cursors)
; add a cursor to each line of active region
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-?") 'mc/insert-numbers)

(defun mc/cursor-is-bar
  nil)

;; (set-face-attribute 'mc/cursor-bar-face nil :height 1)

;; (custom-set-faces
;;  'mc/cursor-bar-face
;;  '((t (:inverse-video t))))

(provide 'multiple_cursors_config)
;;; multiple_cursors_config.el ends here
