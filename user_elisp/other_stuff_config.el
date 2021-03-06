;;; package --- Sumary
;;; Commentary:
;;; Code:

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(setq file-name-coding-system 'utf-8)
(setq scroll-step 1)
(global-hl-line-mode 1)
(global-display-line-numbers-mode)
(fset 'yes-or-no-p 'y-or-n-p)
(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
            kill-buffer-query-functions))
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))
(setq inhibit-startup-message t)
(setq gc-cons-threshold (* 50 1024 1024))
(global-auto-revert-mode t)
(setq delete-by-moving-to-trash t)
(delete-selection-mode t)
(global-set-key (kbd "C-z") nil)
(global-set-key (kbd "C-t") nil)
(global-subword-mode 1)
(setq-default cursor-type 'bar)

;; C-a
(defun beginning-of-line-dwim ()
  "Toggle between moving point to the first non-whitespace character, and the start of the line."
  (interactive)
  (let ((start-position (point)))
    ;; Move to the first non-whitespace character.
    (back-to-indentation)
    ;; If we haven't moved position, go to start of the line.
    (when (= (point) start-position)
      (move-beginning-of-line nil))))
(global-set-key (kbd "C-a") 'beginning-of-line-dwim)

;; C-c e r
(defun eval-and-replace ()
  "Replace the preceding or selected sexp with its value."
  (interactive)
  (if (use-region-p)
      (kill-region (region-beginning) (region-end))
    (backward-kill-sexp))
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))
(global-set-key (kbd "C-c e r") 'eval-and-replace)

;;
(add-hook 'find-file-hook (lambda () (setq buffer-save-without-query t)))

;;
(defun get-include-guard ()
  "Return a string suitable for use in a C/C++ include guard."
  (let* ((fname (buffer-file-name (current-buffer)))
         (fbasename (replace-regexp-in-string ".*/" "" fname))
         (inc-guard-base (replace-regexp-in-string "[.-]"
                                                   "_"
                                                   fbasename)))
    (concat (upcase inc-guard-base) "_")))
(add-hook 'find-file-not-found-hooks
          '(lambda ()
             (let ((file-name (buffer-file-name (current-buffer))))
               (when (or (string= ".hpp" (substring file-name -4)) (string= ".h" (substring file-name -2)))
                 (newline)
                 (insert "#pragma once")
                 (newline 2)
                 (set-buffer-modified-p nil)))))

;;
(persp-mode)

(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

;;
(require 'smooth-scrolling)
(require 'smooth-scroll)
(smooth-scroll-mode 1)
(setq smooth-scroll/vscroll-step-size 5)
(setq scroll-margin 5)
(setq smooth-scroll-margin 5
      scroll-conservatively 101
      scroll-preserve-screen-position t
      auto-window-vscroll nil)

(global-set-key (kbd "C-x C-;") 'comment-line)

;; Workaround for emacs25
;; (load "../elpa/drag-stuff-20161107.2349/drag-stuff.el")
(require 'drag-stuff)
(drag-stuff-global-mode t)
(drag-stuff-define-keys)

;; disable bold and italic
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal))
 (face-list))
(which-function-mode 1)
(set-fringe-style '(nil . 0))

(require 'compile)
(setq compilation-scroll-output t)
(setq compilation-ask-about-save nil)
(add-hook 'compilation-start-hook 'save-some-buffers)

;;
(defun get-deletion-count (arg)
  "Return the amount of spaces to be deleted, ARG is indentation border."
  (if (eq (current-column) 0) 0
    (let ((result (mod (current-column) arg)))
      (if (eq result 0) arg
        result))))
(defun backspace-some (arg)
  "Deletes some backspaces, ARG unused."
  (interactive "*P")
  (if (use-region-p) (backward-delete-char-untabify 1)
    (let ((here (point)))
      (if (eq 0 (skip-chars-backward " " (- (point) (get-deletion-count 4))))
          (backward-delete-char-untabify 1)
        (delete-region (point) here)))))
(global-set-key [backspace] 'backspace-some)

;;
(require 'swiper)
(setq ivy-display-style 'fancy)
(setq ivy-count-format "(%d/%d) ")
;; (setq swiper-action-recenter t)

(defun swiper-thing-or-empty (&optional arg)
  "Open swiper window with selected region if it exist (ARG unused)."
  (interactive)
  (if (use-region-p)
      (progn
        (let ((beg (region-beginning))
              (end (region-end)))
          (pop-mark)
          (swiper (buffer-substring beg end))))
    (swiper))
  )
(global-set-key (kbd "C-s") 'swiper-thing-or-empty)

(add-hook 'prog-mode-hook #'hs-minor-mode)
(global-set-key (kbd "C-c /") 'hs-toggle-hiding)

(require 'highlight-symbol)
(add-hook 'prog-mode-hook 'highlight-symbol-mode)
(global-set-key (kbd "C-}") 'highlight-symbol-next)
(global-set-key (kbd "C-{") 'highlight-symbol-prev)
(setq highlight-symbol-idle-delay 1)

;;
(require 'projectile)
(global-set-key (kbd "C-x <left>") 'projectile-previous-project-buffer)
(global-set-key (kbd "C-x <right>") 'projectile-next-project-buffer)

;;
(defun camelcase_to_underscore ()
  "Convert all camelCase words to underscore_case inside the region."
  (interactive)
  (progn
    (replace-regexp "\\([A-Z]\\)" "_\\1" nil (region-beginning) (region-end))
    (downcase-region (region-beginning) (region-end)))
  )
(require 'string-inflection)


;; (require 'shackle)
;; (setq shackle-rules
;;       '((compilation-mode :align below :ratio 0.1))
;;       shackle-default-rule '(:select t))
;; (shackle-mode 1) ;; ???????????????????????
;; Don't know why, but this line breaks projectile navigation between buffers

(require 'ansi-color)
(defun colorize-compilation-buffer ()
  "[32mBuild succeed.[0m  =>  Build succeed."
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(require 'super-save)
(setq super-save-idle-duration 1)
(setq super-save-auto-save-when-idle t)
(super-save-mode +1)
(setq auto-save-default nil)
;; (setq inhibit-message t)

(set-face-background 'highlight-indentation-current-column-face "#393939")

(require 'visual-regexp)
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)
;; if you use multiple-cursors, this is for you:
(define-key global-map (kbd "C-c m") 'vr/mc-mark)

(require 'lua-mode)
(setq lua-indent-level 4)

(defadvice find-file (before make-directory-maybe (filename &optional wildcards) activate)
  "Create parent directory if not exists while visiting file."
  (unless (file-exists-p filename)
    (let ((dir (file-name-directory filename)))
      (unless (file-exists-p dir)
        (make-directory dir)))))

(electric-pair-mode t)
(show-paren-mode t)

(global-set-key (kbd "C-.") 'imenu)

(add-to-list
 (quote display-buffer-alist)
 (cons "\\*Async Shell Command\\*.*"
       (cons
        (function display-buffer-no-window)
        nil)))

(defvar my/project-app-name "defineme")
(put 'my/project-app-name 'safe-local-variable
     (lambda (x) t))

(defun reload-code-in-app nil
  "Triggers code reload."
  (interactive)
  (progn
    (save-some-buffers)
    (async-shell-command (concat "pkill -SIGUSR1 " my/project-app-name))))
(global-set-key
 (kbd "C-c c r")
 (quote reload-code-in-app))

(require 'markdown-mode)
(setq markdown-mode-map (make-sparse-keymap))
(setq markdown-command "pandoc")
(setq markdown-preview-stylesheets
      (list "https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/2.9.0/github-markdown.min.css"
            "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/default.min.css" "
  <style>
   .markdown-body {
     box-sizing: border-box;
     min-width: 200px;
     max-width: 980px;
     margin: 0 auto;
     padding: 45px;
   }

   @media (max-width: 767px) {
     .markdown-body {
       padding: 15px;
     }
   }
  </style>
"))
(setq markdown-preview-javascript
      (list "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js" "
  <script>
   $(document).on('mdContentChange', function() {
     $('pre code').each(function(i, block) {
       hljs.highlightBlock(block);
     });
   });
  </script>
"))

(provide 'other_stuff_config)
;;; other_stuff_config.el ends here
