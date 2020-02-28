;;; package --- Summary
;;; Commentary:
;;; Code:

;; ido mode and related stuff
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(add-hook 'ido-setup-hook 
          (lambda () 
            (define-key ido-completion-map [tab] 'ido-complete)))
(autoload 'idomenu "idomenu" nil t)


(require 'flx-ido)
(ido-everywhere t)
(flx-ido-mode t)
;; (setq flx-ido-threshold 5000)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)
(ido-ubiquitous-mode)


(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;; enabling acronyms
(defadvice ido-set-matches-1 (after ido-smex-acronym-matches activate)
  (if (and (fboundp 'smex-already-running) (smex-already-running)
           (> (length ido-text) 1))
      (let ((regex (concat "^" (mapconcat 'char-to-string ido-text "[^-]*-")))
            (acronym-matches (list))
            (remove-regexes '("-menu-")))
        ;; Creating the list of the results to be set as first
        (dolist (item items)
          (if (string-match (concat regex "[^-]*$") item) ;; strict match
              (add-to-list 'acronym-matches item)
            (if (string-match regex item) ;; appending relaxed match
                (add-to-list 'acronym-matches item t))))

        ;; Creating resulting list
        (setq ad-return-value
              (append acronym-matches
                      ad-return-value))

        (delete-dups ad-return-value)
        (with-suppressed-warnings (reverse ad-return-value)))))

;; ido vertical mode
(require 'ido-vertical-mode)
(ido-vertical-mode t)
(setq ido-vertical-define-keys 'C-n-C-p-up-and-down)

(setq ido-auto-merge-work-directories-length -1) ;; disable auto-merge

(provide 'ido_config)
;;; ido_config.el ends here
