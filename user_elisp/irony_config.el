;;; package --- summary
;;; Commentary:
;;; Code:


(require 'irony)

(defun my-irony-mode-on ()
  "Avoid enabling 'irony-mode' in modes that inherits 'c-mode', e.g: 'glsl-mode'."
  (when (member major-mode irony-supported-major-modes)
    (irony-mode 1)))

(add-hook 'c++-mode-hook 'my-irony-mode-on)
(add-hook 'c-mode-hook 'my-irony-mode-on)
(add-hook 'objc-mode-hook 'my-irony-mode-on)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  "Setting up irony completion hooks."
  (define-key irony-mode-map [remap completion-at-point] 'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol] 'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
;; (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(setq irony-additional-clang-options (quote (
                                             "-std=c++11"
                                             )))
(require 'irony-completion)
(setq irony-completion-availability-filter '(available deprecated not-accessible))

(require 'flycheck)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))


(require 'company)
(eval-after-load 'company
  '(delete 'company-backends 'company-clang))

(require 'company-irony-c-headers)
;; Load with `irony-mode` as a grouped backend
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))

;;     std::|
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)

(provide 'irony-config)
;;; irony_config.el ends here
