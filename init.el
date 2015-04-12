
(setq package-enable-at-startup nil)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)


;; loading theme
(load-theme 'solarized-dark t)

(load "~/.emacs.d/user_elisp/nyan_config.el")

;; hide tool bar
(tool-bar-mode -1)
;;
(setq file-name-coding-system 'utf-8)
(setq scroll-step 1)
(global-hl-line-mode 1) 
(scroll-bar-mode -1) 
(global-linum-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions))


(load "~/.emacs.d/user_elisp/rainbow_config.el")

;; parens
(electric-pair-mode t)
(show-paren-mode t)
(set-face-background 'show-paren-match "#586e75")
(set-face-foreground 'show-paren-match "#073642")


;;
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))
(setq ruby-indent-level 4)
(set-default-font "SourceCodePro-10")


;; company configuration
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'ruby-mode-hook 'robe-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))



;; WindMove
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)


;;
(desktop-save-mode 1)


;; TODO: dired+
;; TODO: neotree
;; TODO: resoursive minibuf
;; TODO: smartparens
;; TODO: projectile
;; TODO: undo-tree


;; reduce performance issue
(setq gc-cons-threshold (* 10 1024 1024))


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


;; soma analytics
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)


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


;; other
(setq delete-by-moving-to-trash t)


(delete-selection-mode t)


(load "~/.emacs.d/user_elisp/ido_config.el")



;; setup for c/c++ development
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

; style I want to use in c++ mode
(eval-after-load 'company
  '(delete 'company-semantic company-backends))

(setq c-default-style "linux"
      indent-tabs-mode nil
      c-basic-offset 4)

(setq company-clang-arguments '("-std=c++11"))

;; ace jump mode
(require 'ace-jump-mode)
(define-key global-map (kbd "C-;") 'ace-jump-word-mode)
(define-key global-map (kbd "C-'") 'ace-jump-char-mode)


;; imenu conf
(global-set-key (kbd "C-.") 'imenu-anywhere)




;; smart mode line
;(sml/setup)


;; irony-mode
;;(add-hook 'c++-mode-hook 'irony-mode)
;;(add-hook 'c-mode-hook 'irony-mode)
;;(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
;;(defun my-irony-mode-hook ()
;;  (define-key irony-mode-map [remap completion-at-point]
;;    'irony-completion-at-point-async)
;;  (define-key irony-mode-map [remap complete-symbol]
;;    'irony-completion-at-point-async))
;;(add-hook 'irony-mode-hook 'my-irony-mode-hook)
;;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; company-irony
;;(eval-after-load 'company
;;  '(add-to-list 'company-backends 'company-irony))

;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;;     std::|
;;(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)


