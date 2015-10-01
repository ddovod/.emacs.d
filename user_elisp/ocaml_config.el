;;; package --- Summary
;;; Commentary:
;;; Code:


(defvar opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))


(require 'tuareg)
(setq tuareg-lazy-= t)      ;; Indent `=' like a standard keyword.
(setq tuareg-lazy-paren t)  ;; Indent [({ like standard keywords.
(setq tuareg-in-indent 0)   ;; No indentation after `in' keywords.

(setq auto-mode-alist
      (append '(("\\.ml[ily]?$" . tuareg-mode)
                ("\\.topml$" . tuareg-mode))
              auto-mode-alist))

(with-eval-after-load 'tuareg-mode
  (load-file "ocp-indent.el"))

;; --------------------------------------
(require 'merlin)

;; --------------------------------------
(require 'company)
(add-to-list 'company-backends 'merlin-company-backend)

;; --------------------------------------
(with-eval-after-load 'merlin
 (setq merlin-error-after-save nil)
 (flycheck-ocaml-setup))
(add-hook 'tuareg-mode-hook 'merlin-mode)

(defun merlin-packages ()
  "Merlin packages."
  (interactive)
  (merlin-use "core"))
(add-hook 'merlin-mode-hook 'merlin-packages)

;; --------------------------------------
;; Setup environment variables using opam
(dolist (var (car (read-from-string (shell-command-to-string "opam config env --sexp"))))
  (setenv (car var) (cadr var)))

;; Update the emacs path
(setq exec-path (append (parse-colon-path (getenv "PATH"))
                        (list exec-directory)))

;; Update the emacs load path
(add-to-list 'load-path (expand-file-name "../../share/emacs/site-lisp"
                                          (getenv "OCAML_TOPLEVEL_PATH")))

;; Automatically load utop.el
(autoload 'utop "utop" "Toplevel for OCaml" t)

(autoload 'utop-setup-ocaml-buffer "utop" "Toplevel for OCaml" t)
(add-hook 'tuareg-mode-hook 'utop-setup-ocaml-buffer)

;; --------------------------------------
;; (require 'utop)
(eval-after-load 'utop
  '(define-key utop-mode-map (kbd "<C-up>") 'utop-history-goto-prev))
(eval-after-load 'utop
  '(define-key utop-mode-map (kbd "<C-down>") 'utop-history-goto-next))

(provide 'ocaml_config)
;;; ocaml_config.el ends here
