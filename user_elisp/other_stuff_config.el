

;; hide tool bar
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(setq file-name-coding-system 'utf-8)
(setq scroll-step 1)
(global-hl-line-mode 1)  
(global-linum-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions))
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))
(setq ruby-indent-level 4)
(desktop-save-mode 1)
;; reduce performance issue
(setq gc-cons-threshold (* 50 1024 1024))

(setq c-basic-offset 4)
(add-hook 'java-mode-hook
          '(lambda ()
             (setq c-basic-offset 2)
             )
          )


(global-auto-revert-mode t)
(setq vc-handled-backends nil)


;; tweek
(defun beginning-of-line-dwim ()
  "Toggles between moving point to the first non-whitespace character, and
the start of the line."
  (interactive)
  (let ((start-position (point)))
    ;; Move to the first non-whitespace character.
    (back-to-indentation)

    ;; If we haven't moved position, go to start of the line.
    (when (= (point) start-position)
      (move-beginning-of-line nil))))

(global-set-key (kbd "C-a") 'beginning-of-line-dwim)

;; other
(setq delete-by-moving-to-trash t)

;;
(delete-selection-mode t)

;; soma analytics
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)


(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
    (backward-kill-sexp)
  ;;(kill-region (mark) (point))
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))
(global-set-key (kbd "C-c C-e") 'eval-and-replace)


(setq mode-compile-always-save-buffer-p t)

(add-hook 'find-file-hook (lambda () (setq buffer-save-without-query t)))

