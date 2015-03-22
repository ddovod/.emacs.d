;; loading theme
(add-to-list 'load-path "~/.emacs.d/elpa/solarized-theme-1.2.1/")
(add-to-list 'load-path "~/.emacs.d/elpa/dash-2.10.0/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/solarized-theme-1.2.1/")
(load-theme 'solarized-dark t)


(add-to-list 'load-path "~/.emacs.d/nyan-mode")
(require 'nyan-mode)
(nyan-mode)
(setq nyan-animate-nyancat t)

;; hide tool bar
(tool-bar-mode -1)


(setq file-name-coding-system 'utf-8)
(setq scroll-step 1)
(global-hl-line-mode 1) 
(scroll-bar-mode -1) 
(global-linum-mode t)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))


;;
(require 'package)
(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(custom-set-variables
    '(inhibit-startup-screen t))
(custom-set-faces)


;; WindMove
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)


;;
(desktop-save-mode 1)


;; TODO: direx
;; TODO: neotree
;; 
