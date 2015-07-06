;;; Package --- Summary
;;; Commentary:
;;; Code:
(require 'erlang-start)
(require 'erlang)

(setq erlang-electric-commands '())

(add-hook 'erlang-mode-hook 'electric-indent-mode)
(add-hook 'erlang-mode-hook 'pending-delete-mode)
(add-hook 'erlang-mode-hook 'electric-layout-mode)
(add-hook 'erlang-mode-hook 'font-lock-comment-annotations)
(add-hook 'erlang-mode-hook 'projectile-on)
(add-hook 'erlang-mode-hook (lambda () (autopair-mode)))
(add-hook 'erlang-mode-hook
          (lambda () (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'erlang-mode-hook (lambda () (imenu-add-to-menubar "imenu")))

(setq compilation-ask-about-save nil)
(add-hook 'find-file-hook (lambda () (setq buffer-save-without-query t)))

(defun bury-compile-buffer-if-successful (buffer string)
  "Bury a compilation buffer if succeeded without warnings "
  (if (and
       (string-match "compilation" (buffer-name buffer))
       (string-match "finished" string)
       (not
        (with-current-buffer buffer
          (search-forward "warning" nil t)))
       (not
        (string-match "exited abnormally" string)))
      (run-with-timer 1 nil
                      (lambda (buf)
                        (bury-buffer buf)
                        (switch-to-prev-buffer (get-buffer-window buf) 'kill)
                        (message "No compilation errors"))
                      buffer)))
(add-hook 'compilation-finish-functions 'bury-compile-buffer-if-successful)

(defun rebar-compile ()
  "Compile project with rebar."
  (interactive)
  (compile "cd ..; ./rebar compile"))

;; (defun rebar-compile-and-update-module ()
;;   "Compile project with rebar and run erl-reload-module."
;;   (interactive)
;;   (rebar-compile))
;;   (erl-reload-modules (erl-target-node)))

;; (defun erlang-mode-keys ()
;;   "Manual erlang-mode keybindings."
;;   (local-set-key (kbd "C-")))




;; distel
(add-to-list 'load-path (expand-file-name "~/.emacs.d/distel/elisp"))
(require 'distel)
(distel-setup)

(defvar inferior-erlang-prompt-timeout t)
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


(provide 'erlang-config)
;;; erlang_config.el ends here
