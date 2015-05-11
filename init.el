
;;
;; !!! KEEP YOUR CONFIG CLEAN !!!
;;

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


(load "~/.emacs.d/user_elisp/other_stuff_config.el")


(require 'cmake-mode)

(add-hook 'c-mode-common-hook
          (lambda ()
            (if (derived-mode-p 'c-mode 'c++-mode)
                (cppcm-reload-all)
              )))


;; TODO: neotree
;; TODO: resoursive minibuf
;; TODO: smartparens
;; TODO: undo-tree

;; smart mode line
;(sml/setup)

(setenv "ERL_LIBS" "$HOME/_code/erlang/hexlet/deps/sync/")
(setenv "PATH" (shell-command-to-string "source ~/.bashrc; echo -n $PATH"))
