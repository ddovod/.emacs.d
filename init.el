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
(load "~/.emacs.d/user_elisp/nyan_config.el")
(load "~/.emacs.d/user_elisp/rainbow_config.el")
(load "~/.emacs.d/user_elisp/parens_config.el")
(load "~/.emacs.d/user_elisp/font_config.el")
(load "~/.emacs.d/user_elisp/ruby_config.el")
(load "~/.emacs.d/user_elisp/company_config.el")
(load "~/.emacs.d/user_elisp/windmove_config.el")
(load "~/.emacs.d/user_elisp/backup_config.el")
(load "~/.emacs.d/user_elisp/ido_config.el")
(load "~/.emacs.d/user_elisp/ace_config.el")
(load "~/.emacs.d/user_elisp/imenu_config.el")
(load "~/.emacs.d/user_elisp/multiple_cursors_config.el")
(load "~/.emacs.d/user_elisp/yaml_config.el")
(load "~/.emacs.d/user_elisp/projectile_config.el")
(load "~/.emacs.d/user_elisp/cpp_config.el")
(load "~/.emacs.d/user_elisp/erlang_config.el")
(load "~/.emacs.d/user_elisp/flycheck_config.el")
(load "~/.emacs.d/user_elisp/yasnippet_config.el")
(load "~/.emacs.d/user_elisp/irony_config.el")
;;(load "~/.emacs.d/user_elisp/ocaml_config.el")
(load "~/.emacs.d/user_elisp/rtags_config.el")
(load "~/.emacs.d/user_elisp/git_config.el")
(load "~/.emacs.d/user_elisp/expand_region_config.el")
(load "~/.emacs.d/user_elisp/disable_flymake_config.el")
(load "~/.emacs.d/user_elisp/clean_mode_line_config.el")
(load "~/.emacs.d/user_elisp/protobuf_config.el")
(load "~/.emacs.d/user_elisp/org_config.el")
(load "~/.emacs.d/user_elisp/python_config.el")




(load "~/.emacs.d/user_elisp/other_stuff_config.el")

(add-to-list 'load-path "~/.emacs.d/maxima/emaxima")
(add-to-list 'load-path "~/.emacs.d/maxima/imaxima")
(add-to-list 'load-path "~/.emacs.d/maxima/misc")

(require 'imaxima)
(setq imaxima-fnt-size "Large")

(require 'cmake-mode)

(add-hook 'c-mode-common-hook
          (lambda ()
            (if (derived-mode-p 'c-mode 'c++-mode)
                (cppcm-reload-all)
              )))


(setenv "ERL_LIBS"        "$HOME/_code/erlang/hexlet/deps/sync/")
(setenv "LD_LIBRARY_PATH" "/usr/local/lib")
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
 '(safe-local-variable-values
   (quote
    ((projectile-project-compilation-cmd . "cd build/; cmake ..; make")
     (projectile-project-run-cmd . "./build/test_app")
     (projectile-project-compilation-cmd . "cd build/; cmake ..")
     (eval setq flycheck-erlang-library-path
           (file-expand-wildcards "../_build/default/lib/*/ebin"))
     (flycheck-erlang-library-path list
                                   (file-expand-wildcards "../_build/default/lib/*/ebin"))
     (flycheck-erlang-library-path file-expand-wildcards "../_build/default/lib/*/ebin")
     (flycheck-erlang-library-path quote
                                   ("../_build/default/lib/*/ebin"))
     (flycheck-erlang-include-path quote
                                   ("../include/"))
     (flycheck-erlang-library-path
      (quote
       ("../_build/default/lib/*/ebin")))
     (flycheck-erlang-include-path
      (quote
       ("../include/")))
     (org-agenda-files list "main.org" "inbox.org")
     (org-agenda-files list
                       (quote "main.org")
                       (quote "inbox.org"))
     (org-tag-alist quote nil)
     (org-startup-folded quote overview)
     (org-agenda-files quote
                       ("main.org" "inbox.org"))
     (org-agenda-files ".")
     (org-agenda-files list "main.org")
     (org-agenda-files
      (list "main.org"))
     (projectile-project-run-cmd . "cocos run -p Linux")
     (projectile-project-compilation-cmd . "cocos compile -p Linux")
     (projectile-project-compilation-cmd "cocos compile -p Linux")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-symbol-face ((t (:inherit nil :underline (:color "#8abeb7" :style wave)))))
 '(persp-selected-face ((t (:foreground "#ff99ff" :weight bold)))))
(put 'upcase-region 'disabled nil)
