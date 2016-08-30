;;; package --- Sumary
;;; Commentary:
;;; Code:

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
(setq inhibit-startup-message t)


(require 'ruby-mode)
(setq ruby-indent-level 4)
;; (desktop-save-mode 1)
(setq gc-cons-threshold (* 50 1024 1024))

(require 'cc-mode)
(setq c-basic-offset 4)
(add-hook 'java-mode-hook
          '(lambda ()
             (setq c-basic-offset 2)
             )
          )


(global-auto-revert-mode t)

;; tweek
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

;; other
(setq delete-by-moving-to-trash t)

;;
(delete-selection-mode t)


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


(add-hook 'find-file-hook (lambda () (setq buffer-save-without-query t)))

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
               (when (string= ".h" (substring file-name -2))
                 (let ((include-guard (get-include-guard)))
                   (insert "#ifndef " include-guard)
                   (newline)
                   (insert "#define " include-guard)
                   (newline 4)
                   (insert "#endif")
                   (newline)
                   (previous-line 3)
                   (set-buffer-modified-p nil))))))


(persp-mode)


(global-set-key (kbd "C-z") nil)

(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

(require 'smooth-scrolling)
(require 'smooth-scroll)
(smooth-scroll-mode 1)
(setq smooth-scroll/vscroll-step-size 5)
(setq scroll-margin 5)
(setq smooth-scroll-margin 5
      scroll-conservatively 101
      scroll-preserve-screen-position t
      auto-window-vscroll nil)


(global-subword-mode 1)

(setq-default cursor-type 'bar)

;; isearch improvements
(defun isearch-delete-something ()
  "Delete non-matching text or the last character."
  ;; Mostly copied from `isearch-del-char' and Drew's answer on the page above
  (interactive)
  (if (= 0 (length isearch-string))
      (ding)
    (setq isearch-string
          (substring isearch-string
                     0
                     (or (isearch-fail-pos) (1- (length isearch-string)))))
    (setq isearch-message
          (mapconcat #'isearch-text-char-description isearch-string "")))
  (if isearch-other-end (goto-char isearch-other-end))
  (isearch-search)
  (isearch-push-state)
  (isearch-update))

;;(bind-key "<backspace>" 'isearch-delete-something isearch-mode-map)
(define-key isearch-mode-map (kbd "<backspace>") 'isearch-delete-something)

(load "~/.emacs.d/user_elisp/newcomment.el")
(require 'newcomment)
(global-set-key (kbd "C-x C-;") 'comment-line)

;; (require 'anzu)
;; (global-anzu-mode +1)


;; (custom-set-variables
;;  '(anzu-mode-lighter "")
;;  '(anzu-deactivate-region t)
;;  '(anzu-search-threshold 1000)
;;  '(anzu-replace-to-string-separator " => "))

(require 'drag-stuff)
(drag-stuff-global-mode t)

;; disable bold and italic
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal))
 (face-list))

(require 'dired+)

(which-function-mode 1)

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

;; (set-fringe-mode 0)
(set-fringe-style '(nil . 0))

(require 'swiper)
(setq ivy-display-style 'fancy)
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

(setq ivy-count-format "(%d/%d) ")

;; (smartparens-global-mode 1)
;; (require 'smartparens-config)

(add-hook 'prog-mode-hook #'hs-minor-mode)
(global-set-key (kbd "C-c /") 'hs-toggle-hiding)

;; (add-hook 'prog-mode-hook 'rainbow-identifiers-mode)

(require 'highlight-symbol)
(add-hook 'prog-mode-hook 'highlight-symbol-mode)
(global-set-key (kbd "C-}") 'highlight-symbol-next)
(global-set-key (kbd "C-{") 'highlight-symbol-prev)
(setq highlight-symbol-idle-delay 1)

;;
(defun camelcase_to_underscore ()
  "Convert all camelCase words to underscore_case inside the region."
  (interactive)
  (progn
    (replace-regexp "\\([A-Z]\\)" "_\\1" nil (region-beginning) (region-end))
    (downcase-region (region-beginning) (region-end)))
  )

(require 'string-inflection)

(require 'shackle)
(setq shackle-rules
      '((compilation-mode :align below :ratio 0.1))
      shackle-default-rule '(:select t))
(shackle-mode 1)

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

;; (add-hook 'before-save-hook 'delete-trailing-whitespace)

;; (require 'cl-lib)
;; (fset 'original-write-region (symbol-function 'write-region))
;; (defun silent-write-region (start end filename &optional append
;;                                   visit lockname mustbenew)
;;   "Suppress the \"Wrote file\"message in `write-region'."
;;   (original-write-region start end filename append 'nomsg lockname mustbenew))

;; (cl-letf (((symbol-function 'write-region)
;;            #'silent-write-region))
;;   (save-buffer (current-buffer))
;;   ;; take care of mtime changes
;;   (set-visited-file-modtime)
;;   (set-buffer-modified-p nil))


(require 'omnisharp)
(setq omnisharp-server-executable-path "~/Downloads/omnisharp/OmniSharp/bin/Debug/OmniSharp.exe")
(add-hook 'csharp-mode-hook 'omnisharp-mode)
(require 'company)
(eval-after-load 'company
  '(push 'company-omnisharp company-backends))


(set-face-background 'highlight-indentation-current-column-face "#393939")

                                    
(provide 'other_stuff_config)
;;; other_stuff_config.el ends here
