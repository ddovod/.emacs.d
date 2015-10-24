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


(load "~/.emacs.d/user_elisp/other_stuff_config.el")


(require 'cmake-mode)

(add-hook 'c-mode-common-hook
          (lambda ()
            (if (derived-mode-p 'c-mode 'c++-mode)
                (cppcm-reload-all)
              )))


(setenv "ERL_LIBS" "$HOME/_code/erlang/hexlet/deps/sync/")
(setenv "PATH" (shell-command-to-string "source ~/.bashrc; echo -n $PATH"))


(provide 'init)
;;; init.el ends here
