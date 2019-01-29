;;; package --- Summary
;;; Commentary:
;;; Code:
;;
;; !!! KEEP YOUR CONFIG CLEAN !!!
;;



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/user_elisp/packages_config.el")
(load "~/.emacs.d/user_elisp/theme_config.el")
(load "~/.emacs.d/user_elisp/font_config.el")
(load "~/.emacs.d/user_elisp/company_config.el")
(load "~/.emacs.d/user_elisp/windmove_config.el")
(load "~/.emacs.d/user_elisp/backup_config.el")
(load "~/.emacs.d/user_elisp/ido_config.el")
(load "~/.emacs.d/user_elisp/multiple_cursors_config.el")
(load "~/.emacs.d/user_elisp/yaml_config.el")
(load "~/.emacs.d/user_elisp/projectile_config.el")
(load "~/.emacs.d/user_elisp/cpp_config.el")
(load "~/.emacs.d/user_elisp/erlang_config.el")
(load "~/.emacs.d/user_elisp/flycheck_config.el")
(load "~/.emacs.d/user_elisp/yasnippet_config.el")
(load "~/.emacs.d/user_elisp/git_config.el")
(load "~/.emacs.d/user_elisp/expand_region_config.el")
(load "~/.emacs.d/user_elisp/disable_flymake_config.el")
(load "~/.emacs.d/user_elisp/clean_mode_line_config.el")
(load "~/.emacs.d/user_elisp/python_config.el")
(load "~/.emacs.d/user_elisp/lsp_config.el")
(load "~/.emacs.d/user_elisp/other_stuff_config.el")

(exec-path-from-shell-initialize)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(package-selected-packages
   (quote
    (cquery dash ccls lsp-ui company-lsp yasnippet flycheck company groovy-mode yascroll visual-regexp stickyfunc-enhance speed-type spaceline smart-mode-line ido-ubiquitous highlight-thing highlight-symbol flycheck-protobuf connection)))
 '(safe-local-variable-values
   (quote
    ((projectile-project-run-cmd . "../build/jet.py run --Platform=Linux --Configuration=Debug --Editor=Enabled")
     (projectile-project-compilation-cmd . "../build/jet.py build --Platform=Linux --Configuration=Debug --Editor=Enabled")
     (eval progn
           (defun reload-code-in-app nil
             (interactive)
             (progn
               (save-some-buffers)
               (async-shell-command "kill -SIGUSR1 $(pgrep asteroids)")))
           (add-to-list
            (quote display-buffer-alist)
            (cons "\\*Async Shell Command\\*.*"
                  (cons
                   (function display-buffer-no-window)
                   nil)))
           (global-set-key
            (kbd "C-c c r")
            (quote reload-code-in-app)))
     (eval progn
           (defun reload-code-in-app nil
             (interactive)
             (async-shell-command "kill -SIGUSR1 $(pgrep example)"))
           (add-to-list
            (quote display-buffer-alist)
            (cons "\\*Async Shell Command\\*.*"
                  (cons
                   (function display-buffer-no-window)
                   nil)))
           (global-set-key
            (kbd "C-c c r")
            (quote reload-code-in-app)))
     (eval progn
           (defun reload-code-in-app nil
             (interactive)
             (async-shell-command "kill -SIGUSR1 $(pgrep asteroids)"))
           (add-to-list
            (quote display-buffer-alist)
            (cons "\\*Async Shell Command\\*.*"
                  (cons
                   (function display-buffer-no-window)
                   nil)))
           (global-set-key
            (kbd "C-c c r")
            (quote reload-code-in-app)))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-symbol-face ((t (:inherit nil :underline (:color "#8abeb7" :style wave)))))
 '(persp-selected-face ((t (:foreground "#ff99ff" :weight bold)))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
