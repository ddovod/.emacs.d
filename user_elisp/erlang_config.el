;;; Package --- Summary
;;; Commentary:
;;; Code:
(require 'erlang-start)
(require 'erlang)

;; (add-to-list 'auto-mode-alist '("\\rebar.config\\'" . erlang-mode))

(setq erlang-electric-commands '())

(add-hook 'erlang-mode-hook 'electric-indent-mode)
(add-hook 'erlang-mode-hook 'pending-delete-mode)
(add-hook 'erlang-mode-hook 'electric-layout-mode)
(add-hook 'erlang-mode-hook 'font-lock-comment-annotations)
(add-hook 'erlang-mode-hook 'projectile-on)
(add-hook 'erlang-mode-hook
          (lambda () (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'erlang-mode-hook (lambda () (imenu-add-to-menubar "imenu")))

(setq compilation-ask-about-save nil)
(add-hook 'find-file-hook (lambda () (setq buffer-save-without-query t)))

;; distel
(add-to-list 'load-path "~/.emacs.d/distel/elisp")
(require 'distel)
(distel-setup)

(defvar inferior-erlang-prompt-timeout t)
(setq inferior-erlang-machine-options '("-sname" "emacs"))
(setq erl-nodename-cache
      (make-symbol
       (concat
        "emacs@"
        (car (split-string (shell-command-to-string "hostname"))))))

(add-to-list 'load-path "~/.emacs.d/company-distel")
(require 'company-distel)
(require 'company)
(add-to-list 'company-backends '(company-distel :with company-yasnippet))

;; rebar3
(defun inferior-erlang-with-rebar3 (&optional arg)
  "ARG."
  (interactive)
  (shell-command "epmd -daemon")
  (inferior-erlang '"rebar3 live --name=\"emacs@space-rocket\""))
(setq erlang-shell-function 'inferior-erlang-with-rebar3)

(provide 'erlang-config)
;;; erlang_config.el ends here
