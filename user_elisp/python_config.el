;;; package --- Summary
;;; Commentary:
;;; Code:

;; (pyvenv-workon "emacs_python3")
;; (pyvenv-workon "emacs_python2")

(require 'elpy)
(elpy-enable)
(setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
(setq elpy-rpc-python-command "python3")
(setq elpy-rpc-backend "jedi")
(setq python-shell-interpreter "python3")
(setq python-shell-interpreter-args "-i")

(define-key elpy-mode-map (kbd "<C-down>") 'forward-paragraph)
(define-key elpy-mode-map (kbd "<C-up>") 'backward-paragraph)
(define-key elpy-mode-map (kbd "<C-left>") 'subword-backward)
(define-key elpy-mode-map (kbd "<C-right>") 'subword-forward)

(provide 'python_config)
;;; python_config.el ends here
